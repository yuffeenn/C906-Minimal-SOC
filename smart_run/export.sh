#!/bin/bash  

export CODE_BASE_PATH=$(readlink -f ../rtl)  
echo "Root of code base has been specified as:"  
echo "    $CODE_BASE_PATH"  

export TOOL_EXTENSION=$(realpath /data/Xuantie-900-gcc-elf-newlib-x86_64-V3.0.1/bin)  
echo 'Toolchain path($TOOL_EXTENSION):'  
echo "    $TOOL_EXTENSION"  