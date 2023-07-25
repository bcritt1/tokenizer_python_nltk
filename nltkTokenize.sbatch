#!/usr/bin/bash
#SBATCH --job-name=tokenize
#SBATCH --output=/home/%u/out/tokenize.%j.out
#SBATCH --error=/home/%u/err/tokenize.%j.err
#SBATCH --time=02:00:00
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=32GB
pip3 install nltk
pip install --upgrade certifi
python3 -m nltk.downloader all
python3 nltkTokenize.py
