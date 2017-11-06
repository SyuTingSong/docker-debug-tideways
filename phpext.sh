#!/bin/bash

function phpext {
    CWD=`pwd`
    MOD=$1
    VER=$2
    OPT=$3
    CPU=`cat /proc/cpuinfo |grep processor |wc -l`

    cd /tmp
    tar xpf $CWD/$MOD-$VER.tar.xz
    cd $MOD-$VER
    phpize
    ./configure $OPT && make -j $CPU && make install
    cd $CWD
}

