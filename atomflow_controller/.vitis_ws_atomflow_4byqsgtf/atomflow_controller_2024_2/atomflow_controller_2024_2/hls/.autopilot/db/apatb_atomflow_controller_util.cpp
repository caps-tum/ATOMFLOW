#include <iostream>
#include "hls_stream.h"
#include "hls_directio.h"

using namespace std;

struct __cosim_T_64__ {char data[64];};
extern "C" void fpga_fifo_push_64(__cosim_T_64__* val, hls::stream<__cosim_T_64__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_64(__cosim_T_64__* val, hls::stream<__cosim_T_64__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_64(hls::stream<__cosim_T_64__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_64(hls::stream<__cosim_T_64__>* fifo) {
  return fifo->exist();
}
extern "C" bool fpga_direct_valid_64(hls::directio<__cosim_T_64__, 0>* direct) {
  return direct->valid();
}
extern "C" void fpga_direct_load_64(__cosim_T_64__* val, hls::directio<__cosim_T_64__, 0>* direct) {
  *val = direct->read();
}
extern "C" void fpga_direct_store_64(__cosim_T_64__* val, hls::directio<__cosim_T_64__, 0>* direct) {
  direct->write(*val);
}
