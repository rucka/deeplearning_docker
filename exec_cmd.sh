ROOT=$(cd "$(dirname "$0")"; pwd)
source $ROOT/docker/IMAGE
sh $ROOT/ensure_docker_image.sh
if [ ! "$(docker ps -q -f name=dldcmd)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=dldcmd)" ]; then
        docker rm dldcmd
    fi
    docker run --rm --name dldcmd -it -v $ROOT/tmp:/tmp -v $ROOT/data:/data -v $ROOT/code:/code -v $ROOT/models:/models -v $ROOT/logs:/logs -w /code $IMAGE /bin/sh -c $1
fi