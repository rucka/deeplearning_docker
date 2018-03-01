ROOT=$(cd "$(dirname "$0")"; pwd)
source $ROOT/docker/IMAGE
sh $ROOT/ensure_docker_image.sh
if [ ! "$(docker ps -q -f name=dldboard)" ]; then
    if [ "$(docker ps -aq -f status=exited -f name=dldboard)" ]; then
        docker rm dldboard
    fi
    docker run --rm --name dldboard -it -v $ROOT/tmp:/tmp -v $ROOT/data:/data -v $ROOT/logs:/logs -v $ROOT/code:/code -p 6006:6006 -w /code $IMAGE sh -c "tensorboard --logdir=$1"
fi