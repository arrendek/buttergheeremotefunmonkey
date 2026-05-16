#!/bin/bash

#curl -o /workspace/Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
#bash /workspace/Miniconda3-latest-Linux-x86_64.sh -b -p /workspace/miniconda3
#source /workspace/miniconda3/bin/activate
#conda init --all
#conda create -n diffusion-pipe python=3.12
#conda activate diffusion-pipe
cd /workspace
git clone --recurse-submodules https://github.com/tdrussell/diffusion-pipe
pip install torch torchvision
pip install -r /workspace/diffusion-pipe/requirements.txt
pip install flash-attn
pip install --no-build-isolation transformer_engine[pytorch]