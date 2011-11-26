#!/bin/sh


# Sandsynlighed for at vælge en yndlingsret
NAMNAM=0.1

SEED=`od -tu4 -N4 -A n /dev/urandom | tr -d ' '`
GOODNUM=`awk "BEGIN {i = 0; srand($SEED) ;
for (n = 0; n <= 7; n++) if (rand() < $NAMNAM) i++; print i}"`
BADNUM=`expr 7 - $GOODNUM`

shuf -n $GOODNUM yndlingsliste > madplan.tmp
shuf -n $BADNUM liste >> madplan.tmp
shuf madplan.tmp
rm madplan.tmp

