#!bin/bash
time=`date "+%Y_%m_%d_%H_%M_%S"`
nohup python3 main.py > log/$time.log 2>&1