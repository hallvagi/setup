#!/usr/bin/env bash
set -e

# create separate fastai environment
conda create -n fastai -yq
conda activate fastai

#install libs to env with mamba
conda install -yq mamba
mamba install -yq -c conda-forge fastai gh notebook nb_conda jupyter_contrib_nbextensions
