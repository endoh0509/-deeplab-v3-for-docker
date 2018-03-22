FROM jupyter/tensorflow-notebook:latest
MAINTAINER Katsuya Endoh

USER root

# *** Python packages ***
RUN pip install -U tensorflow
RUN conda install -c anaconda pillow
ENV PYTHONPATH $PYTHONPATH:/home/jovyan/work/models/research:/home/jovyan/work/models/research/slim

USER $NB_UID
WORKDIR /home/jovyan/work
