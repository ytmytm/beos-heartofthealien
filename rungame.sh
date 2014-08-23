#!/bin/sh

PWD=`echo $0 | sed s/rungame.sh//`
cd $PWD

REPLY1=`alert --empty "Screen size?" "Normal" "Double" "Triple"`
case $REPLY1 in
	Double)
		OPT="--double"
		;;
	Triple)
		OPT="--triple"
		;;
esac

./alien --iso $OPT
