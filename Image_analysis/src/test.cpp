#include "hls_stream.h"
#include <atomic>
#include <fstream>
#include <string>
#include <vector>
#include <sstream>
#include <cstring>
#include "image_analysis.hpp"

std::vector<std::string> split(const std::string& s, const std::string& delimiter) {
    std::vector<std::string> tokens;
    size_t pos_start = 0, pos_end;
    while ((pos_end = s.find(delimiter, pos_start)) != std::string::npos) {
        if (pos_end != pos_start)
            tokens.push_back(s.substr(pos_start, pos_end - pos_start));
        pos_start = pos_end + delimiter.length();
        if (pos_end == std::string::npos) break;
    }
    tokens.push_back(s.substr(pos_start));
    return tokens;
}

bool parse_input_file(const std::string& filename,
                      atom_location* atomLocations,
                      int& atomLocationsSize,
                      int& projShape0,
                      int& projShape1,
                      int& psfSupersample,
                      int& imageProjectionSize,
                      IMAGE_DTYPE imageProjs_local[],
                      IMAGE_DTYPE imageProjs[],
                      int imageProjs_local_size[],
                      int& fullImage_rows,
                      int& fullImage_cols) {
    // Initialize parameters
    atomLocationsSize = 0;
    psfSupersample = 0;
    imageProjectionSize = 0;
    fullImage_rows = 0;
    fullImage_cols = 0;

    unsigned atom_location_ptr = 0;

    std::ifstream file(filename);
    if (!file.is_open()) {
        return false;
    }

    std::string line;
    unsigned localProjection_cnt = 0;

    while (std::getline(file, line)) {
        size_t colonPos = line.find(": ");
        if (colonPos == std::string::npos) continue;

        std::string key = line.substr(0, colonPos);
        std::string value = line.substr(colonPos + 2);

        if (key == "atomLocationSize") {
            atomLocationsSize = std::stoi(value);
        }
        else if (key == "projShape0") {
            projShape0 = std::stoi(value);
        }
        else if (key == "projShape1") {
            projShape1 = std::stoi(value);
        }                
        else if (key == "psfSupersample") {
            psfSupersample = std::stoi(value);
        }
        else if (key == "imageProjectSize") {
            imageProjectionSize = std::stoi(value);
        }
        else if (key == "atomLocations") {
            std::vector<std::string> atoms = split(value, "||");
            for (const auto& atomStr : atoms) {
                if (atomStr.empty()) continue;
                std::vector<std::string> xy = split(atomStr, "|");
                if (xy.size() != 2) continue;
                
                atom_location loc;
                loc.y = std::stod(xy[0]);
                loc.x = std::stod(xy[1]);
                atomLocations[atom_location_ptr] = (loc);
                atom_location_ptr++;
            }
        }
        else if (key == "imageProjs_local") {
            std::vector<std::string> elements = split(value, "|");            
            /*
            for (size_t i = 0; i < IMAGE_PROJECTION_LOCAL; ++i) {
                if (i < elements.size() && !elements[i].empty()) {
                    imageProjs_local[localProjection_cnt*IMAGE_PROJECTION_LOCAL+i] = std::stod(elements[i]);
                } else {
                    imageProjs_local[localProjection_cnt*IMAGE_PROJECTION_LOCAL+i] = 0.0;
                    if(imageProjs_local_size[localProjection_cnt] == 0)
                        imageProjs_local_size[localProjection_cnt] = i;
                }                
            }   */
            unsigned int elements_idx = 0;
            for (size_t i = 0; i < IMAGE_PROJECTION_LOCAL; ++i) {
                if (i < elements.size() && !elements[elements_idx].empty() && i % 32 != 31) {
                    imageProjs_local[localProjection_cnt*IMAGE_PROJECTION_LOCAL+i] = std::stod(elements[elements_idx]);
                    elements_idx ++;
                } else {
                    imageProjs_local[localProjection_cnt*IMAGE_PROJECTION_LOCAL+i] = 0.0;
                    if(imageProjs_local_size[localProjection_cnt] == 0)
                        imageProjs_local_size[localProjection_cnt] = i;
                }                
            }
            localProjection_cnt++;
        }
        else if (key == "imageProjs") {
            std::vector<std::string> elements = split(value, "|");
            for (size_t i = 0; i < IMAGE_PROJECTION_SIZE; ++i) {
                if (i < elements.size() && !elements[i].empty()) {
                    imageProjs[i] = std::stod(elements[i]);
                } else {
                    imageProjs[i] = 0.0;
                }
            }
        }
        else if (key == "fullImage_row") {
            fullImage_rows = std::stoi(value);
        }
        else if (key == "fullImage_col") {
            fullImage_cols = std::stoi(value);
        }
    }

    //  Verify we have the expected number of atomLocationsSize
    if (atomLocationsSize != atom_location_ptr) {
        return false;
    }

    return true;
}



bool parse_fullImage(const std::string& filename, 
                    IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE]) {
    // Initialize parameters
    memset(fullImage, 0, FULL_IMAGE_SIZE * sizeof(IMAGE_DTYPE));

    std::ifstream file(filename);
    if (!file.is_open()) {
        return false;
    }

    std::string line;
    bool found_fullImage = false;

    // Use lambda separate string
    auto split = [](const std::string& s, char delimiter) {
        std::vector<std::string> tokens;
        std::string token;
        std::istringstream tokenStream(s);
        while (std::getline(tokenStream, token, delimiter)) {
            if (!token.empty()) {
                tokens.push_back(token);
            }
        }
        return tokens;
    };

    int copy_offset = 0;
    while (std::getline(file, line)) {
        if(!found_fullImage){
            size_t colonPos = line.find(": ");
            if (colonPos == std::string::npos && !found_fullImage) continue;

            std::string key = line.substr(0, colonPos);
            std::string value = line.substr(colonPos + 2);
            // Initialize fullImage
            if (key == "fullImage") {
                found_fullImage = true;
            }
        }
        else{
            std::vector<std::string> elements = split(line, '|');            
            // size match
            size_t copy_count = std::min(elements.size(), static_cast<size_t>(FULL_IMAGE_SIZE));
            for (size_t i = 0; i < copy_count; ++i) {
                fullImage[i+copy_offset] = std::stod(elements[i]);
            }
            copy_offset += copy_count;
        }
    }

    // test data compactness
    if (!found_fullImage) {
        std::cerr << "Error: fullImage data not found in file" << std::endl;
        return false;
    }

    return true;
}



int main(int argc, char** argv){
    int atomLocationsSize;
    int projShape0;
    int projShape1;
    atom_location atomLocations[2000]; //1024
    int psfSupersample;
    int imageProjectionSize;
    IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE];
    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE];
    int imageProjs_local_size[IMAGE_PROJECTION_SIZE];
    IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE];
    int fullImage_rows;
    int fullImage_cols; 
    IMAGE_DTYPE emissions[2000]; //1024
    unsigned emission_cnt;

    bool success = parse_input_file("restoutput.txt",
                                   atomLocations,
                                   atomLocationsSize,
                                   projShape0,
                                   projShape1,
                                   psfSupersample,
                                   imageProjectionSize,
                                   imageProjs_local,
                                   imageProjs,
                                   imageProjs_local_size,
                                   fullImage_rows,
                                   fullImage_cols);

    if(!success)
        return 1;
    success = parse_fullImage("fullImage_output.txt", fullImage);
    if(!success)
        return 1;

    ap_uint<512> imageProjs_local_new[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE * 32 / 512];
    ap_uint<512> fullImage_new[FULL_IMAGE_SIZE * 32 / 512];
    
    union {
        uint32_t u;
        float f;
    } converter1, converter2;

    
    for(int i = 0; i < IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE * 32 / 512; i++){
        for(int j = 0; j < 512 / 32; j++){
            converter1.f = imageProjs_local[i*512/32+j];
            imageProjs_local_new[i].range(j*32+31, j*32) = converter1.u;
        }
    }
    for(int i = 0; i < FULL_IMAGE_SIZE * 32 / 512; i++){
        for(int j = 0; j < 512/32; j++){
            converter2.f = fullImage[i*512/32+j];
            fullImage_new[i].range(j*32+31, j*32) = converter2.u;
        }
    }


    reconstruct(atomLocationsSize, projShape0, projShape1,atomLocations,
     psfSupersample, 
     imageProjectionSize, 
     //imageProjs_local, 
     imageProjs_local_new,
     imageProjs,
     imageProjs_local_size,
     //fullImage,
     fullImage_new,
     fullImage_rows,  fullImage_cols,  emissions);

    std::cout << "emissions: ";
    unsigned emission_ptr = 0;
    while(emission_ptr < atomLocationsSize){
        std::cout << emissions[emission_ptr] << "|";
        emission_ptr++;
    }
    std::cout << std::endl;

    return 0;
}