images_id=`docker images|grep $1|awk -F ' ' '{print $3}'`
echo $images_id
cid=`docker ps|grep $images_id|awk -F ' ' '{print $1}'`
echo $cid
