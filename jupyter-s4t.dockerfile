# NOTE: This code was taken from https://github.com/fastai/swiftai/blob/master/Dockerfile

FROM ubuntu:18.04

RUN apt update && apt upgrade -y
RUN apt install -y apt-utils clang curl git libblocksruntime-dev libpython-dev libpython3.6 libxml2 python3 python3-pip

# Swift for TensorFlow
WORKDIR /root
RUN curl https://storage.googleapis.com/swift-tensorflow-artifacts/nightlies/latest/swift-tensorflow-DEVELOPMENT-ubuntu18.04.tar.gz > swift.tar.gz
RUN tar -xf swift.tar.gz
ENV PATH="/root/usr/bin:${PATH}"

# Swift for Jupyter integration
RUN git clone https://github.com/google/swift-jupyter.git
WORKDIR /root/swift-jupyter
RUN pip3 install jupyter
RUN python3 register.py --sys-prefix --swift-toolchain /root
