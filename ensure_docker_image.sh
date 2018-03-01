ROOT=`dirname $0`
source $ROOT/docker/IMAGE
if [[ "$(docker images -q $IMAGE 2> /dev/null)" == "" ]]; then
  sh $ROOT/docker-build.sh
fi
