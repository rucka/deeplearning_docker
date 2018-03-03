# Summary
An image to bootstrap the developement of neural networks with Keras and TensorFlow, nltk or Theano

# How to build the image
In order to build the image you can run the script [docker-build.sh](https://github.com/rucka/deeplearning_docker/blob/master/docker-build.sh). You can customize the name of the image [docker/IMAGE](https://github.com/rucka/deeplearning_docker/blob/master/docker/IMAGE)

# Available scripts
use:
- [exec_cmd.sh](https://github.com/rucka/deeplearning_docker/blob/master/exec_cmd.sh) to run a command inside the container e.g. `./exec_cmd.sh python hello.py` 
- [run_book.sh](https://github.com/rucka/deeplearning_docker/blob/master/run_book.sh) to run a jupter notebook so you can write and test your code from your browser at http://localhost:8888. If you don't know jupyter, please take a look at the [official documentation](https://jupyter-notebook.readthedocs.io/en/stable/).
- [run_board.sh](https://github.com/rucka/deeplearning_docker/blob/master/run_board.sh) to run the tensorflow board and connect to it from the browser at http://localhost:6006
- [run_shell.sh](https://github.com/rucka/deeplearning_docker/blob/master/run_shell.sh) to open a container shell session 
Each script check and ensure the docker image already exists.

# Deep learning sample
Please run the jupyter server with the script [run_book.sh](https://github.com/rucka/deeplearning_docker/blob/master/run_book.sh) and open and inspect the simplest_model.ipynb 

# Which libraries can I use from the container?
- Tensorflow [v1.5]
- keras [v2.1.3]
- Theano [v0.9.0]
- nltk [v3.2.5]
- seaborn [v0.8.1]
- gensim [v3.1.0]
- hyperopt [v0.1]
- pymc3 [v3.2]
- opencv [last version]
- numpy [last version]
- scipy [last version]
- h5py [last version]
- yaml [last version]

# The image published at Docker Hub
You can find a ready to use image at [Docker Hub](https://hub.docker.com/r/rucka/deeplearning/).
