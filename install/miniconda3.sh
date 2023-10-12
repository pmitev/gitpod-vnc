#!/bin/bash
if [[ ! -z $PREFIX ]]; then
  wget -c https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
  sh Miniconda3-latest-Linux-x86_64.sh -b -p $PREFIX -s
  source $PREFIX/etc/profile.d/conda.sh
  conda config --set auto_activate_base false
else
  echo 'ERROR: $PREFIX not set'
fi
