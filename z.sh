export CROSS_COMPILE="/home/cyproto21/kernel/linaro-7.2/bin/aarch64-linux-gnu-"
export ARCH=arm64 && export SUBARCH=arm64
export KBUILD_BUILD_HOST="-_-"
export KBUILD_BUILD_USER="Yash"
mkdir -p out
make O=out clean
make O=out mrproper
make O=out z2_plus_defconfig
make O=out -j$(nproc --all)
gdrive upload out/arch/arm64/boot/Image.gz-dtb
