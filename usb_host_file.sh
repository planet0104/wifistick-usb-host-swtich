#!/bin/bash

# 使用Python获取当前时间戳（毫秒）
timestamp=$(python -c 'import time; print(int(time.time() * 1000))')

# 创建文件名
filename="usbhost-${timestamp}"

# 在指定目录下创建文件，这里假设是在当前目录下创建
touch "/root/${filename}"