#include "stdio.h"

int main (void) {
  int* REG_BASE = (int*)(0x20000000);
  for (int i=0; i<16; i++) {
    REG_BASE[i] = 0x12200000 + 16 * i;
  }
  return 0;
}

