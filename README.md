# wifistick-usb-host-swtich
 高通410随身wifi系统 usb host开机切换脚本

 在shell中执行usb_host_file后创建一个usbhost-n的文件。

 开机启动时，如果检测到/root/目录下存在usbhost-n文件，就删除这个文件，并切换到usb host模式，否则恢复adb模式。
