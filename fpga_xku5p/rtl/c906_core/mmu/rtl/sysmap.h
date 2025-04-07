/*Copyright 2020-2021 T-Head Semiconductor Co., Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

// ADDR is 28-bit, 4K address
// Flag includes: Strong Order, Cacheable, Bufferable, Shareable, Security

  `define SYSMAP_BASE_ADDR0  28'h0010000 // BROM-256MB
  `define SYSMAP_FLG0        5'b01100
  
  `define SYSMAP_BASE_ADDR1  28'h0020000 // SRAM-256MB
  `define SYSMAP_FLG1        5'b01100
  
  `define SYSMAP_BASE_ADDR2  28'h0030000 // DEVICE-256MB
  `define SYSMAP_FLG2        5'b10000
  
  `define SYSMAP_BASE_ADDR3  28'h0040000 // C906-256MB
  `define SYSMAP_FLG3        5'b10000
  
  `define SYSMAP_BASE_ADDR4  28'h0080000 // DRAM-1GB
  `define SYSMAP_FLG4        5'b01100
  
  `define SYSMAP_BASE_ADDR5  28'h00C0000 // RESERVE0-1GB
  `define SYSMAP_FLG5        5'b01100
  
  `define SYSMAP_BASE_ADDR6  28'h0100000 // RESERVE1-1GB
  `define SYSMAP_FLG6        5'b011000

  `define SYSMAP_BASE_ADDR7  28'hfffffff // RESERVE2-(1TB-4GB)
  `define SYSMAP_FLG7        5'b01100

//End ct_mmu_sysmap
