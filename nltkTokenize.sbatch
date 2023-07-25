#!/usr/bin/bash
#SBATCH --job-name=tokenize
#SBATCH --output=/home/users/%u/out/tokenize.%j.out
#SBATCH --error=/home/users/%u/err/tokenize.%j.err
#SBATCH --time=02:00:00
#SBATCH -p hns
#SBATCH -c 1
#SBATCH --mem=32GB
module load python/3.9.0
pip3 install nltk
pip install --upgrade certifi
python3 -m nltk.downloader all
python3 nltkTokenize.py
