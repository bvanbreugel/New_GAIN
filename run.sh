#!/bin/bash

rm ./*.csv
train=0.8
its=10000
dataset=bc
python3 create_missing.py --dataset $dataset -o missing.csv --oref ref.csv --normalize01 1 --uniform_miss 1 --istarget 1
python3 gain.py -i missing.csv -o imputed.csv  --dataset $dataset --it $its --trainratio $train --target target 
python3 gain_ana.py -i missing.csv --ref ref.csv --imputed imputed.csv -o result.json

