#!/bin/bash

# Set-up Anaconda virtual environment
python BLRunner.py --config config-files/config_emt_epi.yaml
python BLRunner.py --config config-files/config_emt_hyb.yaml
python BLRunner.py --config config-files/config_emt_mes.yaml

python BLEvaluator.py --config config-files/config_emt_epi.yaml \
                      --a --j --e --spearman --sepr --m
python BLEvaluator.py --config config-files/config_emt_hyb.yaml \
                      --a --j --e --spearman --sepr --m
python BLEvaluator.py --config config-files/config_emt_mes.yaml \
                      --a --j --e --spearman --sepr --m
