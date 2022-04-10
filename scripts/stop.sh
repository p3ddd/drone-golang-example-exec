id=$(lsof -i:7007|grep drone-golang-example|awk 'NR==1{print $2}')
if [ ! ${id} ]
then
    echo "项目未启动"
else
    kill -9 $id
fi