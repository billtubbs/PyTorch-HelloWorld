#!/bin/bash

# An script to train LeNet on MNIST with SGD

LOGDIR='./logs/'
DATADIR='./data/'
mkdir -p $LOGDIR
mkdir -p $DATADIR
GPUID=0 # Select a GPU. If you want say two GPUs, set GPUID="0,1"

CUDA_VISIBLE_DEVICES=$GPUID \
python -u ../main.py\
  --data $DATADIR\
  --batch-size 128\
  --dropout 0.3\
  --momentum 0.9\
  --epochs 10 > $LOGDIR/log.out