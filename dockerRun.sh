echo $1
echo $2
images_id=`docker images|grep $1|awk -F ' ' '{print $3}'`
echo $images_id

if [ "$2" != ""] ; then
    docker run -it -p $2:$2 $images_id
  else
    docker run -it $images_id
fi
