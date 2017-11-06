#!/bin/bash

function setup {
    CWD=`pwd`
    MOD=$1
    VER=$2
    OPT=$3
    PRERUN=$4
    CPU=`cat /proc/cpuinfo |grep processor |wc -l`

    cd /tmp
    tar xpf $CWD/$MOD-$VER.tar.xz
    cd $MOD-$VER
    eval $PRERUN
    ./configure $OPT && make -j $CPU && make install
    cd $CWD
}

