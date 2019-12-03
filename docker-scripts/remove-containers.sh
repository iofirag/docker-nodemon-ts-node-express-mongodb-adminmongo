docker volume rm docker-node-express-mongodb_mongovolume
# docker volume rm mongovolume docker-node-express-mongodb_mongovolume

# docker volume rm $(docker volume ls)

# docker-compose down --rmi
docker-compose kill
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
# docker rmi $(docker images -q)

# docker container stop $(docker container ls -aq)
# docker container rm $(docker container ls -aq)
docker rmi $(docker images -a | grep "node-mongo-seed" | awk '{print $3}')
# docker volume rm $(docker volume ls -q --filter dangling=true)
docker container prune
docker volume prune

# https://linuxize.com/post/how-to-remove-docker-images-containers-volumes-and-networks/