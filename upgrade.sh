#!/bin/bash

set -eu
cd "$(dirname $0)"

source .venv/bin/activate

pip3 install --upgrade \
    diffusers \
    gradio \
    torch \
    transformers

# Not needed for the demo: accelerate, optimum

pip3 freeze > requirements.txt
