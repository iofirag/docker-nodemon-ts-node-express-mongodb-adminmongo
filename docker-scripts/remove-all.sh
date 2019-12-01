docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)

docker image prune -a
docker rmi $(docker images -a -q)
docker volume prune

# https://linuxize.com/post/how-to-remove-docker-images-containers-volumes-and-networks/