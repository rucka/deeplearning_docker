ROOT=$(cd "$(dirname "$0")"; pwd)
source $ROOT/docker/IMAGE
sh $ROOT/ensure_docker_image.sh
if [ ! "$(docker ps -q -f name=dldshell)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=dldshell)" ]; then
        docker rm dldshell
    fi
    docker run --rm --name dldshell -it -v $ROOT/tmp:/tmp -v $ROOT/data:/data -v $ROOT/code:/code -v $ROOT/models:/models -v $ROOT/logs:/logs -w /code $IMAGE /bin/bash
fi