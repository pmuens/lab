# Lab

Personal lab to play around with Machine Learning algorithms and do Data Science.

**NOTE:** In order to make the implementations as understandable as possible I sometimes write more expressive code which could result in poor performance or disapproval of purists. I strongly believe that readability for such educational endeavors is more important than high-performance or idiomatic code.

## Running it

```sh
docker run -it -p 8888:8888 --rm --name jupyter-lab \
  -v "$PWD":/home/jovyan/work \
  --ipc=host \
  pmuens/jupyter-lab:latest jupyter lab \
  --ip=0.0.0.0 \
  --no-browser \
  --allow-root \
  --NotebookApp.token=\
  --notebook-dir=/home/jovyan/work
```
