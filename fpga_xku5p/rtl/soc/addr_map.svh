//-----------------------------------------------------------------
//  AXI MEMORY MAP
//-----------------------------------------------------------------
`define BROM_ADDR_BASE	40'H00_0000_0000
`define BROM_ADDR_LEN	32'd28
`define SRAM_ADDR_BASE	40'H00_1000_0000
`define SRAM_ADDR_LEN	32'd28
`define APB_ADDR_BASE	40'H00_2000_0000
`define APB_ADDR_LEN	32'd28
`define C906_ADDR_BASE	40'H00_3000_0000
`define C906_ADDR_LEN	32'd28
`define DRAM_ADDR_BASE	40'H00_4000_0000
`define DRAM_ADDR_LEN	32'd30

//-----------------------------------------------------------------
//  APB SUB-SYSTEM MEMORY MAP
//-----------------------------------------------------------------
`define NPU_BASE_ADDR 	40'H00_2000_0000
`define NPU_ADDR_LEN	12 // 4KB
`define UART0_BASE_ADDR 40'H00_2000_2000
`define UART0_ADDR_LEN	12 // 4KB


//-----------------------------------------------------------------
//  CPU RESET BOOT ADDR
//-----------------------------------------------------------------
`define CPU_RVBA `SRAM_ADDR_BASE
`define C906_PLIC `C906_ADDR_BASE