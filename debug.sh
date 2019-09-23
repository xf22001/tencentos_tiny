#!/bin/bash

#================================================================
#   Copyright (C) 2019年08月28日 肖飞 All rights reserved
#   
#   文件名称：debug.sh
#   创 建 者：肖飞
#   创建日期：2019年08月28日 星期三 08时45分08秒
#   修改日期：2019年09月23日 星期一 12时53分53秒
#   描    述：
#
#================================================================
function main() {
	#cgdb -d arm-none-eabi-gdb -x gdb_init
	arm-none-eabi-gdb -x gdb_init
	#gdbgui -g arm-none-eabi-gdb --gdb-args "-x gdb_init_gui"
}

main $@
