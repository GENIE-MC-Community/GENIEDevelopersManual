#!/bin/sh

# Generic run on oxygen to test the installation.

NUMEVT=10000
if [ $# -gt 0 ]; then
  NUMEVT=$1
fi

gevgen -n $NUMEVT -p 14 -t 1000080160 -e 0,10 --run 100 \
  -f 'x*exp(-x)' \
  --seed 2989819 --cross-sections $XSECSPLINEDIR/gxspl-vA-v2.8.0.xml >& run_log.txt

