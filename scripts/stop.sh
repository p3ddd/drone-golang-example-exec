#! /bin/sh

# NR==1 第一行
# print $2 输出第二个参数
id=$(lsof -i:7007|/bin/grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn,.idea,.tox} drone-golang-example|awk 'NR==1{print $2}')
if [ ! ${id} ]
then
    echo "项目未启动"
else
    kill -9 $id
fi