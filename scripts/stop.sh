#! /bin/sh

# NR==1 第一行
# print $2 输出第二个参数
id=$(sudo lsof -i:7007|grep drone-golang-example|awk 'NR==1{print $2}')
if [ ! ${id} ]
then
    echo "项目未启动"
else
    sudo kill -9 $id
fi