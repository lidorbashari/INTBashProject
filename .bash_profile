#!/bin/bash

USERNAME=$(whoami)
echo "Hello $USERNAME"

COURSE_ID="$DevOpsTheHardWay"

if [ -f ".token" ]; then
if [ stat -c %a ".token" -ne "600" ]; then
echo "Warning: .token file has too open permissions"
fi
fi

umask 002

export PATH="$PATH:/home/$USERNAME/usercommands"

date --iso-8601=seconds

alias ltxt='ls *.txt'

if [ -d "~/tmp" ]; then
rm -rf ~/tmp/*
else
mkdir tmp
fi

