#!/bin/bash

# Change energy
# for i in {50..100..1}
mkdir results
for i in {50..51..1}
do
cd /home/mohmiftakhuldwi99_mail_ugm_ac_id/brain_phits
mkdir  "results/testing-$i"
cp TA.inp "results/testing-$i/TA.inp"
cd "results/testing-$i"
sed -i "s/e0		= 80/e0		= $i/" TA.inp
echo "Start simulating $i Energy"
sudo phits.sh TA.inp
done