#include "hls_stream.h"
#include "image_analysis.hpp"
#include <cmath>
#include <cstdint>
#include <ostream>
#include "iostream"
#include "hls_burst_maxi.h"

void getLocalImages_single(int curr_idx,int psfSupersample, int projShape0, int projShape1, atom_location* atomLocations, hls::stream<local_image_info>& localImages){
  atom_location coord = atomLocations[curr_idx];
  local_image_info info;

  int y_int = (int)std::round(coord.y);
  int x_int = (int)std::round(coord.x);
  info.X_int = x_int;
  info.Y_int = y_int;
  info.Y_min = y_int - projShape0 / 2;
  info.X_min = x_int - projShape1 / 2;
  info.Y_max = (info.Y_min + projShape0) - 1;
  info.X_max = (info.X_min + projShape1) - 1;
  info.dx = (int)(std::round((coord.x - x_int) * psfSupersample));
  info.dy = (int)(std::round((coord.y - y_int) * psfSupersample));
  localImages.write(info);        
}

void convert_address(
    uint64_t W,         // bus_widen (bits)
    uint64_t D,         // data_widen（bits）
    uint64_t ADDR,      // start address with how many D
    uint64_t LEN,       // LEN = n* D
    uint64_t& start_addr_w,    // output: start address
    uint64_t& burst_len,       // output：end address
    uint64_t& first_word_offset, // output：start bit position in first valid W
    uint64_t& last_word_end_bit   // output：end bit position in last valid W
) {
    // calculate start and end bit positions
    uint64_t start_bit = ADDR * D;
    uint64_t end_bit = (ADDR + LEN) * D - 1;  // inclusive end bit

    // calculate start address（how many W）
    start_addr_w = start_bit / W;
    
    // calculate end address（how many W）
    uint64_t end_addr_w = end_bit / W;
    
    // calculate burst length (how many W)
    burst_len = (end_bit >= start_bit) ? (end_addr_w - start_addr_w + 1) : 0;
    
    // calculate start bit position in first valid W
    first_word_offset = start_bit % W;
    
    // calculate end bit position in last valid W
    last_word_end_bit = end_bit % W;
}

void Image_extract_next(int curr_idx, hls::stream<local_image_info>& localImages, 
    hls::burst_maxi<ap_uint<512>> fullImage, //IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE], 
    IMAGE_DTYPE curr_fullImage[31][31], 
    //hls::stream<IMAGE_DTYPE> (&curr_fullImage_streams)[31],
    hls::burst_maxi<ap_uint<512>> imageProjs_local, //IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], 
    IMAGE_DTYPE curr_localImage[31][31],
    //hls::stream<IMAGE_DTYPE> (&curr_localImage_streams)[31],
    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE], IMAGE_DTYPE& curr_imageProjs) {

    //#pragma HLS ARRAY_PARTITION variable=curr_fullImage dim=1 type=complete
    //#pragma HLS ARRAY_PARTITION variable=curr_localImage dim=1 type=complete

    local_image_info curr_info = localImages.read();
    unsigned int xmin = curr_info.X_min;
    unsigned int ymin = curr_info.Y_min;
    int xidx = (curr_info.dx + 1) % 1;
    int yidx = (curr_info.dy + 1) % 1;
    unsigned int proj_offset = yidx * 1 + xidx;    

    //imageProjs_local.read_request(proj_offset*IMAGE_PROJECTION_LOCAL, 31*31);    
    // one row = 31 * 32 -> round up -> 2*512 bits. 31 row -> 62. allocation is 64 rows (1024 elements)
    imageProjs_local.read_request(proj_offset * IMAGE_PROJECTION_LOCAL * sizeof(IMAGE_DTYPE) / 512, 62); 
    
    uint64_t full_first_word_offset[31];
    uint64_t full_last_word_end_bit[31];
    uint64_t full_burst_len[31];
    uint64_t full_start_addr_w[31];

    //for(unsigned char i = 0; i < 31; i++){
    //    convert_address(512, 32, xmin+(ymin+i)*768, 31, full_start_addr_w[i], full_burst_len[i], full_first_word_offset[i], full_last_word_end_bit[i]);
    //    fullImage.read_request(full_start_addr_w[i], full_burst_len[i]);
    //}

    union {
        uint32_t u;
        float f;
    } converter1, converter2;

    curr_imageProjs = imageProjs[proj_offset];
    for(unsigned char i = 0; i < 31; i++){
        convert_address(512, 32, xmin+(ymin+i)*PIXEL, 31, full_start_addr_w[i], full_burst_len[i], full_first_word_offset[i], full_last_word_end_bit[i]);
        fullImage.read_request(full_start_addr_w[i], full_burst_len[i]);

        ap_uint<512> d0 = imageProjs_local.read();
        ap_uint<512> d1 = imageProjs_local.read();
        ap_uint<1024> din;
        din.range(511,0) = d0;
        din.range(1023,512) = d1; 

        ap_uint<1024> fdin;
        ap_uint<512> fd0 = fullImage.read();
        ap_uint<512> fd1 = fullImage.read();
        ap_uint<512> fd2;
        if(full_burst_len[i] > 2)
            fd2 = fullImage.read();
        ap_uint<1536> dtmp;
        dtmp.range(511,0) = fd0;
        dtmp.range(1023, 512) = fd1;
        dtmp.range(1535, 1024) = fd2;
        fdin = dtmp.range(full_first_word_offset[i]+1023, full_first_word_offset[i]);

        for(unsigned char j = 0; j < 31; j++){
            #pragma HLS UNROLL
            converter1.u = din.range(j*32+31, j*32);
            curr_localImage[i][j] = (converter1.f);

            converter2.u = fdin.range(j*32+31, j*32);
            curr_fullImage[i][j] = (converter2.f);     
            //if(j == 0)
            //    printf("i = %d j = %d c1.u %d c1.f %f c2.u %d c2.f %f\n", i,j,converter1.u, converter1.f, converter2.u, converter2.f);       
        }
    }
}


void vector_sum(IMAGE_DTYPE din[31], IMAGE_DTYPE& sum){
    IMAGE_DTYPE sum1[16];
    IMAGE_DTYPE sum2[8];
    IMAGE_DTYPE sum3[4];
    IMAGE_DTYPE sum4[2];

    for(unsigned char i=0; i < 15; i++){
        #pragma HLS UNROLL
        sum1[i] = din[2*i] + din[2*i+1];
    }
    sum1[15] = din[30];

    for(unsigned char i=0; i < 8; i++){
        #pragma HLS UNROLL
        sum2[i] = sum1[2*i] + sum1[2*i+1];
    }

    for(unsigned char i=0; i < 4; i++){
        #pragma HLS UNROLL
        sum3[i] = sum2[2*i] + sum2[2*i+1];
    }

    for(unsigned char i=0; i < 2; i++){
        #pragma HLS UNROLL
        sum4[i] = sum3[2*i] + sum3[2*i+1];
    }    

    sum = sum4[0] + sum4[1];
}

void vector_sum_prod(IMAGE_DTYPE vec_in[31], IMAGE_DTYPE vec_in1[31], IMAGE_DTYPE& sum, IMAGE_DTYPE& prod){
    IMAGE_DTYPE res[31]; 
    IMAGE_DTYPE res1[31];
    for(unsigned char j = 0; j < 31; j++){
        #pragma HLS UNROLL
        // #pragma HLS UNROLL factor=16
        res[j] = vec_in[j];
        res1[j] = vec_in[j] * vec_in1[j];
    }
    vector_sum(res, sum);
    vector_sum(res1, prod);
}

void matrix_sum_prod(IMAGE_DTYPE mat[31][31], IMAGE_DTYPE mat1[31][31], IMAGE_DTYPE& sum, IMAGE_DTYPE& prod){
    // #pragma HLS ARRAY_PARTITION variable=mat dim=1 type=complete
    // #pragma HLS ARRAY_PARTITION variable=mat1 dim=1 type=complete
    #pragma HLS PIPELINE
    IMAGE_DTYPE sum_val[31];
    IMAGE_DTYPE prod_val[31];
    
    // Single loop with partial unroll - much cleaner!
    for(unsigned i = 0; i < 31; i++){
        #pragma HLS UNROLL
        // #pragma HLS PIPELINE II=1
        // #pragma HLS UNROLL factor=16          // Process 16 in parallel
        // #pragma HLS LOOP_TRIPCOUNT max=31 min=31 avg=31  // Exactly 31 iterations
        vector_sum_prod(mat[i], mat1[i], sum_val[i], prod_val[i]);
    }
    
    vector_sum(sum_val, sum);
    vector_sum(prod_val, prod);
}

void post_process(IMAGE_DTYPE projSumUsed, IMAGE_DTYPE sum, IMAGE_DTYPE curr_imageProjs, IMAGE_DTYPE& dout){
    #pragma HLS PIPELINE II=1
    dout = sum * (curr_imageProjs / projSumUsed);
}

void reconstruct(int atomLocationsSize,int projShape0, int projShape1, atom_location atomLocations[2000],
    int psfSupersample, 
    int imageProjectionSize, 
    
    //IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], 
    //hls::burst_maxi<IMAGE_DTYPE> imageProjs_local,
    hls::burst_maxi<ap_uint<512>> imageProjs_local,

    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE],
    int imageProjs_local_size[IMAGE_PROJECTION_SIZE],
    
    //IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE],
    //hls::burst_maxi<IMAGE_DTYPE> fullImage,
    hls::burst_maxi<ap_uint<512>> fullImage,
    
    int fullImage_rows, int fullImage_cols,  IMAGE_DTYPE* emissions){


#pragma HLS INTERFACE port=return mode=s_axilite bundle=control

#pragma HLS INTERFACE port=atomLocationsSize mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=projShape0 mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=projShape1 mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=atomLocations mode=m_axi bundle=atomLocations depth=1600 //1024

#pragma HLS INTERFACE port=psfSupersample mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=imageProjectionSize mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=imageProjs_local mode=m_axi bundle=imageProjs_local
#pragma HLS INTERFACE port=imageProjs mode=m_axi bundle=imageProjs
#pragma HLS INTERFACE port=imageProjs_local_size mode=m_axi bundle=imageProjs_local_size

#pragma HLS INTERFACE port=fullImage mode=m_axi bundle=fullImage depth=FULL_IMAGE_SIZE num_read_outstanding=64 max_read_burst_length=64
//#pragma HLS cache port=fullImage lines=64 depth=64 

#pragma HLS INTERFACE port=fullImage_rows mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=fullImage_cols mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=emissions mode=m_axi bundle=emissions depth=1600 //1024


    for(unsigned short idx = 0; idx < atomLocationsSize; idx++){
        #pragma HLS DATAFLOW
        // #pragma HLS PIPELINE II=4
        // #pragma HLS LOOP_TRIPCOUNT max=1024 min=1024 avg=1024        
        // #pragma HLS LOOP_TRIPCOUNT max=100 min=100 avg=100   
        // #pragma HLS LOOP_TRIPCOUNT max=256 min=256 avg=256  
        // #pragma HLS LOOP_TRIPCOUNT max=484 min=484 avg=484   
        // #pragma HLS LOOP_TRIPCOUNT max=784 min=784 avg=784  
        // #pragma HLS LOOP_TRIPCOUNT max=1156 min=1156 avg=1156
        #pragma HLS LOOP_TRIPCOUNT max=1600 min=1600 avg=1600  
        hls::stream<local_image_info,4> localImages;
        IMAGE_DTYPE curr_fullImage[31][31];
        IMAGE_DTYPE curr_localImage[31][31];
        IMAGE_DTYPE curr_imageProjs;
        IMAGE_DTYPE curr_emissions;
        IMAGE_DTYPE projSumUsed = 0;
        IMAGE_DTYPE sum = 0;

        //#pragma HLS ARRAY_RESHAPE variable=curr_localImage dim=1 type=complete        
        //#pragma HLS ARRAY_RESHAPE variable=curr_fullImage dim=1 type=complete
        //#pragma HLS ARRAY_PARTITION variable=curr_fullImage dim=1 type=complete
        //#pragma HLS ARRAY_PARTITION variable=curr_localImage dim=1 type=complete
        //#pragma HLS bind_storage variable=curr_fullImage type=RAM_T2P 
        //#pragma HLS bind_storage variable=curr_localImage type=RAM_T2P

        getLocalImages_single(idx, psfSupersample, projShape0, projShape1, atomLocations, localImages);
        //Image_extract(idx, localImages, fullImage, curr_fullImage, 
        //    imageProjs_local, curr_localImage, imageProjs, curr_imageProjs); //,fullImage_rows, fullImage_cols
        Image_extract_next(idx, localImages, fullImage, curr_fullImage, 
            imageProjs_local, curr_localImage, imageProjs, curr_imageProjs);            
        
        
        //conv_kernel(curr_fullImage, curr_localImage, projSumUsed, sum);     
        matrix_sum_prod(curr_localImage, curr_fullImage, projSumUsed, sum);   
        post_process(projSumUsed, sum, curr_imageProjs, emissions[idx]);
    }
}