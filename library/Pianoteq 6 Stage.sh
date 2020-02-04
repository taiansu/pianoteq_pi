#!/bin/bash
sudo cpufreq-set -c 0 -g performance
sudo cpufreq-set -c 1 -g performance
sudo cpufreq-set -c 2 -g performance
sudo cpufreq-set -c 3 -g performance

/home/pi/'Pianoteq 6 STAGE'/arm/'Pianoteq 6 STAGE' --multicore max

sudo cpufreq-set -c 0 -g ondemand
sudo cpufreq-set -c 1 -g ondemand
sudo cpufreq-set -c 2 -g ondemand
sudo cpufreq-set -c 3 -g ondemand
