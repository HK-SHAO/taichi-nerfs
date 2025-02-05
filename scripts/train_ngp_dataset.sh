#!/bin/bash

set -euo pipefail

export ROOT_DIR="./assets/datasets/ngp_data"
export DOWNSAMPLE=0.5 # to avoid OOM

python3 train.py \
    --root_dir $ROOT_DIR/ --dataset_name ngp \
    --exp_name custom_ngp --downsample $DOWNSAMPLE \
    --num_epochs 20 --scale 16.0 --batch_size 8192
