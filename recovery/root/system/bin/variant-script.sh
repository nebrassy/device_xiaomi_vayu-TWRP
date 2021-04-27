#!/system/bin/sh
# This script is needed to automatically set device props.

load_vayu()
{
    resetprop "ro.product.model" "M2102J20SG"
    resetprop "ro.product.vendor.model" "M2102J20SG"
    resetprop "ro.product.name" "vayu"
    resetprop "ro.build.product" "vayu"
    resetprop "ro.product.device" "vayu"
    resetprop "ro.product.system.device" "vayu"
    resetprop "ro.product.vendor.device" "vayu"
    resetprop "ro.vendor.product.device" "vayu"
}

load_bhima()
{
    resetprop "ro.product.model" "M2102J20SI"
    resetprop "ro.product.vendor.model" "M2102J20SI"
    resetprop "ro.product.name" "bhima"
    resetprop "ro.build.product" "bhima"
    resetprop "ro.product.device" "bhima"
    resetprop "ro.product.system.device" "bhima"
    resetprop "ro.product.vendor.device" "bhima"
    resetprop "ro.vendor.product.device" "bhima"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_vayu
        ;;
    "INDIA")
        load_bhima
        ;;
    *)
        load_vayu
        ;;
esac

exit 0
