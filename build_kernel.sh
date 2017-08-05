   #!/bin/bash
	#output where are stored compiled files
	rm -rf ../out;
	mkdir ../out;
	#magic begins...
	make mrproper;
	git clean -fdx;
	make ARCH=arm64 O=../out merge_hi6250_defconfig;
	make ARCH=arm64 O=../out -j9 2>/dev/null;
