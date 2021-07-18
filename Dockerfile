FROM continuumio/anaconda3:latest
RUN apt-get update && \
    apt-get install -y build-essential cmake clang libssl-dev vim
WORKDIR /code
RUN git clone https://github.com/ry-takashima/python_asr
WORKDIR /code/python_asr
RUN conda create -n python_asr python=3.7 anaconda
RUN activate python_asr
ADD requirements.txt /code/python_asr
RUN pip install -r requirements.txt