#!/bin/bash

# Change energy

# 
# for i in {50..100..1}
for i in {50..100..1}
do
cd ~/phits/running
mkdir  "results/testing-$i"
cp head.inp "results/testing-$i/head.inp"
cd "results/testing-$i"
sed -i "s/e0          = 125/e0= $i/" head.inp
echo "Start simulating $i Energy"
done