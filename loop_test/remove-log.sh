#!bin/bash
cd log
filelist=`ls | grep .log`
for file in ${filelist}
    do
        rm $file
    done