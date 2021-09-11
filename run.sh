#!/bin/bash

# Change energy
# for i in {50..100..1}
mkdir results
for i in {50..100..1}
do
cd ~/phits
mkdir  "results/testing-$i"
cp TA.inp "results/testing-$i/TA.inp"
cd "results/testing-$i"
sed -i "s/e0		= 80/e0		= $i/" TA.inp
echo "Start simulating $i Energy"
done