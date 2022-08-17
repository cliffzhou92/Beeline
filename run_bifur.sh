#!/bin/bash

# Set-up Anaconda virtual environment
python BLRunner.py --config config-files/config_bl_bifur_0.yaml
python BLRunner.py --config config-files/config_bl_bifur_1.yaml

python BLEvaluator.py --config config-files/config_bl_bifur_0.yaml \
                      --a --j --e --spearman --sepr --m
python BLEvaluator.py --config config-files/config_bl_bifur_1.yaml \
                      --a --j --e --spearman --sepr --m
