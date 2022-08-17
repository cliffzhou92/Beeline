#!/bin/bash

# Set-up Anaconda virtual environment
python BLRunner.py --config config-files/config_bl_cycle.yaml

python BLEvaluator.py --config config-files/config_bl_cycle.yaml \
                      --a --j --e --spearman --sepr --m
