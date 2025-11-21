#!/bin/bash

WORK_PATH=$(dirname "$0")
CURR_PATH=$(pwd)
cd "$WORK_PATH"

echo ""
echo "      Uart Download"
echo ""
read -p "please input the serial port (e.g. /dev/ttyUSB0): " input
echo "$input"

sftool -p "$input" -c SF32LB52 -m nand write_flash "bootloader\bootloader.bin@0x62080000" "main.bin@0x620A0000" "ftab\ftab.bin@0x62000000"

