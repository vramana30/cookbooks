#!/bin/bash

set -e

if ! which docker-machine; then
    echo "You must install docker machine"
    exit 1
fi

eval $(docker-machine env)

env_setter(){
    export CHEF_VERSION=$1
}

run(){
    kitchen destroy && \
    kitchen converge -c && \
    kitchen converge -c && \
    kitchen verify -c
}

env_setter '11.18.0'
run
env_setter '12.6.0'
run
