#!/sbin/sh

dd if=/dev/block/platform/mtk-msdc.0/by-name/recovery_amonet of=/tmp/recovery_amonet.bin
dd if=/dev/block/platform/mtk-msdc.0/by-name/boot_amonet of=/tmp/boot_amonet.bin

diff /tmp/recovery_amonet.bin /tmp/boot_amonet.bin

if [ $? -ne 0 ] ; then
    echo "Detected overwritten boot-exploit, restoring from recovery" > /tmp/restore_bootpatch.log
    dd if=/tmp/recovery_amonet.bin of=/dev/block/platform/mtk-msdc.0/by-name/boot_amonet
fi
