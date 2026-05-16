#!/bin/bash

cd /workspace
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh -b -p /workspace/miniconda3
source ./miniconda3/bin/activate
conda init --all
conda create -n diffusion-pipe python=3.12
conda activate diffusion-pipe
git clone --recurse-submodules https://github.com/tdrussell/diffusion-pipe
pip install torch torchvision
pip install -r requirements.txt
pip install flash-attn