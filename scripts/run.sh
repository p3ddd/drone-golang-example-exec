#! /bin/sh

chmod +x drone-golang-example
nohup ./drone-golang-example > web.log 2>&1 &
echo "项目已启动"
