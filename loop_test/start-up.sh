#!bin/bash
time=`date "+%Y_%m_%d_%H_%M_%S"`
curpath=`pwd`
if [ ! -d "/log/" ];
then
	mkdir $curpath/log
	echo "Create log directory to save log."
else
	echo "File directory log already exists."
fi
nohup python3 main.py > log/$time.log 2>&1
