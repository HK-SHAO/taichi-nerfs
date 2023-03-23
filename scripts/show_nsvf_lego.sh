#!/bin/bash

set -euo pipefail

export DATA_DIR=./assets/datasets/Synthetic_NeRF

python3 show_gui.py \
    --root_dir $DATA_DIR/Lego \
    --exp_name Lego --perf \
    --num_epochs 4 --batch_size 2048 --lr 1e-2 \
    --gui \
    --half2_opt \
    --val_only --ckpt_path ckpts/nsvf/Lego/epoch=3.ckpt \
    # --no_save_test
