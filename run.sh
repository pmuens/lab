#!/bin/sh

docker run -it -p 8888:8888 --rm --name jupyter-lab \
  -v "$PWD":/home/jovyan/work \
  --ipc=host \
  pmuens/jupyter-lab:latest jupyter lab \
  --ip=0.0.0.0 \
  --no-browser \
  --allow-root \
  --NotebookApp.token=\
  --notebook-dir=/home/jovyan/work
