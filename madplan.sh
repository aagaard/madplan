#!/bin/sh


# Sandsynlighed for at vælge en yndlingsret
NAMNAM=0.3

SEED=`od -tu4 -N4 -A n /dev/urandom | tr -d ' '`
GOODNUM=`awk "BEGIN {i = 0; srand($SEED) ;
for (n = 0; n <= 7; n++) if (rand() < $NAMNAM) i++; print i}"`

echo $GOODNUM

