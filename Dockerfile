FROM jupyter/tensorflow-notebook:latest
MAINTAINER Katsuya Endoh

USER root

# *** Python packages ***
RUN pip install -U tensorflow
RUN conda install -c anaconda pillow

# *** deeplab-v3 ***
# WORKDIR /home/jovyan/work
# RUN git clone https://github.com/tensorflow/models.git
# WORKDIR models/research
ENV PYTHONPATH $PYTHONPATH:/home/jovyan/work/models/research:/home/jovyan/work/models/research/slim
# RUN python deeplab/model_test.py

USER $NB_UID
WORKDIR /home/jovyan/work
