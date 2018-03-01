ROOT=`dirname $0`
source $ROOT/docker/IMAGE
if [[ "$(docker images -q $IMAGE 2> /dev/null)" != "" ]]; then
  docker rmi -f $IMAGE
fi
docker build --force-rm -t $IMAGE $ROOT/docker/