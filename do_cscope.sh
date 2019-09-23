#!/bin/bash

#================================================================
#   
#   
#   文件名称：do_cscope.sh
#   创 建 者：肖飞
#   创建日期：2019年09月23日 星期一 13时31分38秒
#   修改日期：2019年09月23日 星期一 13时33分25秒
#   描    述：
#
#================================================================
function main() {
	mkdir -p cscope
	for f in $(find . -type f -name "*.d" 2>/dev/null); do
		for i in $(cat $f | sed 's/^.*: //g'); do
			if test -f "$i";then readlink -f "$i" >>dep_files;fi;
			if test "${i:0:1}" = "/";then :;fi;
		done; \
	done;
	cat dep_files | sort | uniq | sed 's/^\(.*\)$$/\"\1\"/g' >> cscope/cscope.files;
	cat dep_files | sort | uniq >> cscope/ctags.files;
	rm dep_files
	tags.sh cscope;
	tags.sh tags;
	tags.sh env;
}

main $@
