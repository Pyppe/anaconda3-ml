#!/usr/bin/env bash

docker build -t anaconda3-ml-local .
docker run -i -t -p 8888:8888 anaconda3-ml-local /bin/bash -c "jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"
