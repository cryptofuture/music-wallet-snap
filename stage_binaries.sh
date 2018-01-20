#!/bin/bash

TESTARCH=$(uname -m)

if [ "$TESTARCH" == "x86_64" ]
then
    tar -xJf ./arch/linux-x64.tar.gz -C ./arch/
    mv ./arch/linux-x64 ./arch/music-wallet
    cp ./arch/gmc/x64/gmc ./arch/music-wallet/package.nw/bin/gmc
elif [ "$TESTARCH" == "amd64" ]
then
    tar -xJf ./arch/linux-x64.tar.gz -C ./arch/
    mv ./arch/linux-x64 ./arch/music-wallet
    cp ./arch/gmc/x64/gmc ./arch/music-wallet/package.nw/bin/gmc
elif [ "$TESTARCH" == "i686" ]
then
    tar -xJf ./arch/linux-x32.tar.gz -C ./arch/
    mv ./arch/linux-x32 ./arch/music-wallet
    cp ./arch/gmc/x32/gmc ./arch/music-wallet/package.nw/bin/gmc
elif [ "$TESTARCH" == "i386" ]
then
    tar -xJf ./arch/linux-x32.tar.gz -C ./arch/
    mv ./arch/linux-x32 ./arch/music-wallet
    cp ./arch/gmc/x32/gmc ./arch/music-wallet/package.nw/bin/gmc
else
    echo "$TESTARCH"
fi
