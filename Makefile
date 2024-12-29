# Add 1k of padding to the DTBs to allow for environment variables
# to be runtime added by the bootloader (i.e. /chosen properties)
DTC_FLAGS := -p 1024

dtb-$(CONFIG_MACH_MOTOROLA_DEEN) += msm8953-deen-evt2.dtb
dtb-$(CONFIG_MACH_MOTOROLA_DEEN) += msm8953-deen-dvt1a.dtb
dtb-$(CONFIG_MACH_MOTOROLA_DEEN) += msm8953-deen-dvt1b.dtb
dtb-$(CONFIG_MACH_MOTOROLA_DEEN) += msm8953-deen-dvt2.dtb
dtb-$(CONFIG_MACH_MOTOROLA_DEEN) += msm8953-deen-pvt1.dtb
dtb-$(CONFIG_MACH_MOTOROLA_DEEN) += msm8953-deen-pvt2.dtb

dtb-$(CONFIG_MACH_MOTOROLA_SANDERS) += msm8953-sanders-p1.dtb
dtb-$(CONFIG_MACH_MOTOROLA_SANDERS) += msm8953-sanders-p2.dtb
dtb-$(CONFIG_MACH_MOTOROLA_SANDERS) += msm8953-sanders-p3.dtb
dtb-$(CONFIG_MACH_MOTOROLA_SANDERS) += msm8953-sanders-p4.dtb

always		:= $(dtb-y)
subdir-y	:= $(dts-dirs)
clean-files	:= *.dtb
