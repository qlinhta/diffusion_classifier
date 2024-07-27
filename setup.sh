#!/bin/bash

python3 -m venv env
source env/bin/activate

pip install -r requirements.txt

export CACHE_NUMBER=0

echo "Installation complete and virtual environment activated."
