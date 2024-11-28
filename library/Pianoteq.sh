#!/bin/bash
sudo cpufreq-set -c 0 -g performance
sudo cpufreq-set -c 1 -g performance
sudo cpufreq-set -c 2 -g performance
sudo cpufreq-set -c 3 -g performance

/home/pi/'Pianoteq 8'/arm-64bit/'Pianoteq 8' --multicore max

sudo cpufreq-set -c 0 -g ondemand
sudo cpufreq-set -c 1 -g ondemand
sudo cpufreq-set -c 2 -g ondemand
sudo cpufreq-set -c 3 -g ondemand
