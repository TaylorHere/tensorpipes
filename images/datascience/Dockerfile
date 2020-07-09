FROM jupyter/datascience-notebook:latest
USER root
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libsasl2-dev \
        libsasl2-2 \
        libsasl2-modules-gssapi-mit \
        python3-dev \
        default-libmysqlclient-dev \
        build-essential && \
    rm -rf /var/lib/apt/lists/*
RUN pip install torch==1.5.1+cpu torchvision==0.6.1+cpu -f https://download.pytorch.org/whl/torch_stable.html
# ENV CC gcc_linux-64 \
#     PATH /path/to/Anaconda/bin:$PATH
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
