#!/bin/bash

# Set-up Anaconda virtual environment
python BLRunner.py --config config-files/config_bl_trifur_0.yaml
python BLRunner.py --config config-files/config_bl_trifur_1.yaml
python BLRunner.py --config config-files/config_bl_trifur_2.yaml
python BLRunner.py --config config-files/config_bl_trifur_3.yaml

python BLEvaluator.py --config config-files/config_bl_trifur_0.yaml \
                      --a --j --e --spearman --sepr --m
python BLEvaluator.py --config config-files/config_bl_trifur_1.yaml \
                      --a --j --e --spearman --sepr --m
python BLEvaluator.py --config config-files/config_bl_trifur_2.yaml \
                      --a --j --e --spearman --sepr --m
python BLEvaluator.py --config config-files/config_bl_trifur_3.yaml \
                      --a --j --e --spearman --sepr --m
