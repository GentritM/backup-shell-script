#!/bin/bash 



if [ $# -ne 2 ]; then 
    echo "two args needed one for folder which you wanna back up and second for the destination folder"
    exit 1 
fi 


target=$1
#checking whether the target is a dir or a file only 
if [ -f $target ]; then 
    echo "target $target is a file "
else
    
    if [ -d $target ]; then 
        echo "target $target is a directory "    
    else 
        echo "target is not valid, please enter a dir or a file"
        exit 2 
    fi
fi 
destination=$2 
if [[ -f $destination ]]; then 
    echo "destination must be a directory not a file"
    exit 1 
fi 

date=$(date +%Y-%m-%d_%H_%M)
mkdir -p $destination/$date 
cp -r $target $destination/$date

if [ $? -eq 0 ]; then
    echo "it will be backed up to $destination/$date" 
    echo backup ok 
else 
    echo backup failed 
fi 

