#!/bin/sh

class_file=`find ${HOME}/.juc/classes | grep -i $0`
class_name=`basename ${class_file} | sed 's/\.class//g' | sed 's/\//./g'`

java -cp ${HOME}/.juc/classes ${class_name} $*
