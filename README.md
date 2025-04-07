# C906-Minimal-SOC

## 项目概述

本项目基于玄铁（XuanTie）开源RISC-V核C906，搭建了一个最小化的SoC系统。

- RISC-V C906核心集成
- AXI4高性能总线
- 256KB SRAM内存
- UART接口
- JTAG调试支持

## 项目结构

```
├── doc                   # 文档目录
├── fpga_xku5p            # FPGA项目目录
├── rtl                   # RTL源代码
├── smart_run             # 仿真目录
└── toolbox               # 工具箱
```

本项目包括三个技术文档：

1. 【C906-SOC最小系统搭建】(1)集成
2. 【C906-SOC最小系统搭建】(2)仿真
3. 【C906-SOC最小系统搭建】(3)FPGA移植

这些文档提供了使用玄铁开源RISC-V C906核心构建最小系统的深入指南，涵盖系统集成、仿真和FPGA实现。

## 开发环境

### 硬件

- 开发板：Alinx AXKU5 (xcku5p-ffvb676-2-i)
- 下载器：CKLink Lite

### 软件

- Vivado2018.3
- 剑池CDK
- VCS2018
- Verdi2018

## 贡献与使用

- 欢迎提交问题和改进建议
- 请遵守项目的代码规范和开发流程

## 许可证

[在此处指定项目许可证]

## 致谢

- 玄铁（XuanTie）开源RISC-V核心团队