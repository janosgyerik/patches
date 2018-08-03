#!/usr/bin/env bash

set_dev() {
    if [ "${SONARQUBE_DEV+x}" ]; then
        DEV=$SONARQUBE_DEV
    else
        DEV=~/DEV
    fi
}

replace_plugin() {
    local sq_home=$1
    local build_dir=$2
    local basename=$3

    local plugins_dir=$sq_home/extensions/plugins

    rm -vf "$plugins_dir/$basename-"*
    cp -v "$build_dir/$basename-"*-SNAPSHOT.jar "$plugins_dir"/
}
