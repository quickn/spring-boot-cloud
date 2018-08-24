docker rm $(docker ps -a | awk '{print $1}' | sort -r)

