#!/usr/bin/env bash
set -eou pipefail

cd

cat << EOF > .condarc
channels:
  - fastai
  - fastchan
  - defaults
channel_priority: strict
EOF

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest*.sh -b
~/miniconda3/bin/conda init bash
rm Miniconda3-latest*.sh

cd -
