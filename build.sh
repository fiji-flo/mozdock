#!/usr/bin/env bash
cd `dirname $0`

BUILDORDER="c9 c9cpp mozbuilddeps vnc mozcentral mozbuilt"

for target in $BUILDORDER
do
    echo "building ${target} ..."
    docker build -t ${target} ${target}
done
