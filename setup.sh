#!/bin/bash

python3.9 -m venv env

source env/bin/activate

pip install ipdb flake8 ipykernel pytest pytest-env tqdm numpy torch torchvision wandb tensorboard transformers diffusers accelerate seaborn
pip install git+https://github.com/modestyachts/ImageNetV2_pytorch
pip install datasets
pip install git+https://github.com/openai/CLIP.git
pip install open_clip_torch

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    pip install torch torchvision cudatoolkit
elif [[ "$OSTYPE" == "darwin"* ]]; then
    pip install torch torchvision --extra-index-url https://download.pytorch.org/whl/mps
fi

export CACHE_NUMBER=0

echo "Setup completed successfully."
