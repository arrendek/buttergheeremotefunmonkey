#!/bin/bash

git clone --recurse-submodules https://github.com/tdrussell/diffusion-pipe
conda create -n diffusion-pipe python=3.12
conda activate diffusion-pipe
pip install torch torchvision
pip install -r requirements.txt
pip install flash-attn