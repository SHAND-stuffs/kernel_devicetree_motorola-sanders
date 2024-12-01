# Add 1k of padding to the DTBs to allow for environment variables
# to be runtime added by the bootloader (i.e. /chosen properties)
DTC_FLAGS := -p 1024

dtb-y += msm8953-sanders-p1.dtb
dtb-y += msm8953-sanders-p2.dtb
dtb-y += msm8953-sanders-p3.dtb
dtb-y += msm8953-sanders-p4.dtb

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb
