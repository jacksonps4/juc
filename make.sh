#!/bin/sh

if ! [ -d src ]; then
    mkdir src
fi

if ! [ -d classes ]; then
    mkdir classes
fi

sources=`find src -name \*.java`
if [ -n "${sources}" ]; then
    javac -d classes ${sources}
fi

