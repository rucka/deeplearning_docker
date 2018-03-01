ROOT=$(cd "$(dirname "$0")"; pwd)
source $ROOT/docker/IMAGE
sh $ROOT/ensure_docker_image.sh
if [ ! "$(docker ps -q -f name=dldbook)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=dldbook)" ]; then
        docker rm dldbook
    fi
    docker run --rm --name dldbook -it -v $ROOT/data:/data -v $ROOT/tmp:/tmp -v $ROOT/logs:/logs -v $ROOT/models:/models -v $ROOT/code:/code -p 8888:8888 -w /code $IMAGE sh -c "/run_jupyter.sh --allow-root"
fi