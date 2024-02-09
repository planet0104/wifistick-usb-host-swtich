#!/bin/bash

# USB默认处于Gadget(从)模式
# 切换为主模式:
# echo host > /sys/kernel/debug/usb/ci_hdrc.0/role
# 关闭主模式:
# echo gadget > /sys/kernel/debug/usb/ci_hdrc.0/role

# 找到 ${HOME} 目录下第一个以 host- 开头并以数字结尾的文件
file_to_remove=$(find /root -maxdepth 1 -type f -name 'usbhost-[0-9]*' | head -n 1)

# 检查是否找到了符合条件的文件
if [ -n "$file_to_remove" ]; then
    # 删除找到的文件（确保有足够权限）
    rm "$file_to_remove"
    echo host > /sys/kernel/debug/usb/ci_hdrc.0/role
    echo "已开启USB Host模式"
else
    echo "已关闭USB Host模式"
    echo gadget > /sys/kernel/debug/usb/ci_hdrc.0/role
fi