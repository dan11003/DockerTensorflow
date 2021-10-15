#!/bin/bash
#
# Usage:  ./docker_run.sh [/path/to/data]
#
# This script calls `nvidia-docker run` to start the mask-rcnn
# container with an interactive bash session.  This script sets
# the required environment variables and mounts the labelfusion
# source directory as a volume in the docker container.  If the
# path to a data directory is given then the data directory is
# also mounted as a volume.
# 
# -v mount folder into container



nvidia-docker run --name pytorch_jupyter -it --rm  -v /home/dlan/:/tf -e NB_UID=1000 -e NB_GID=1000 -e VNC_SERVER_PASSWORD=password -p 8888:8888  --runtime=nvidia -p 6006:6006 -p 5900:5900 tensorflow/tensorflow:latest-gpu-jupyter 

