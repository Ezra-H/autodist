FROM tensorflow/tensorflow:2.1.0-gpu-py3

RUN apt-get update && apt-get install -y \
    build-essential \
    rsync

COPY requirements* /
COPY setup.py /
RUN pip3 install --no-cache-dir -r requirements.txt
