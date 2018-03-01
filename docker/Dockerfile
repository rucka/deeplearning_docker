FROM tensorflow/tensorflow:1.5.0
LABEL maintainer="Gianluca Carucci <gianluca@carucci.org>"
RUN apt-get update -qq && apt-get install -y --no-install-recommends apt-utils \
    && apt-get install -y wget vim gfortran g++ libblas-dev liblapack-dev curl make \
    wget \
    python-software-properties \
    python-opencv \
    libopenblas-base \
    python-numpy \
    python-scipy \
    python-h5py \
    python-yaml \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN pip --no-cache-dir install --no-dependencies "keras==2.1.3"
RUN pip --no-cache-dir install --no-dependencies "Theano==0.9.0"
RUN pip --no-cache-dir install --no-dependencies "nltk==3.2.5"
RUN pip --no-cache-dir install --no-dependencies "seaborn==0.8.1"
RUN pip --no-cache-dir install "gensim==3.1.0"
RUN pip --no-cache-dir install https://cntk.ai/PythonWheel/CPU-Only/cntk-2.2-cp27-cp27mu-linux_x86_64.whl
RUN pip --no-cache-dir install "hyperopt==0.1"
RUN pip --no-cache-dir install "pymc3==3.2"
# quick test and dump package lists
RUN python -c "import tensorflow; print(tensorflow.__version__)" \
    && dpkg-query -l > /dpkg-query-l.txt \
    && pip2 freeze > /pip2-freeze.txt