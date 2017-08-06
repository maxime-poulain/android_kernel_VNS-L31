   #!/bin/bash
	#exports
	export ARCH=arm
	export CROSS_COMPILE=/home/khaon/Downloads/gcc-linaro-6.3.1-2017.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
	#output where are stored compiled files
	rm -rf ../out;
	mkdir ../out;
	#magic begins...
	make mrproper;
	git clean -fdx;
	make ARCH=arm64 O=../out merge_hi6250_defconfig;
	make ARCH=arm64 O=../out -j9 2>../out/error_log.txt ;
