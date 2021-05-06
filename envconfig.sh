# install dependencies
#Should match Config.py
echo Initializing...

#Create directories to store persistent data
mkdir -p /workspace/conda
mkdir -p /workspace/data

#Create a new env called arcw
conda create --prefix /workspace/conda/arcw python=3.6 &&
echo "conda activate /workspace/conda/arcw" >> ~/.bashrc &&
export PATH=/workspace/conda/arcw/bin:$PATH &&
source ~/.bashrc
export SHELL=/bin/bash

#Install conda packages for to run jupyterlab
mamba env create -f ../.ci/39.yml

echo To run jupyter lab : jupyter lab --ip=0.0.0.0 --allow-root