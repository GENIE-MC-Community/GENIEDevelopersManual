#!/bin/sh

# while getopts "n:x" options; do
#   case $options in
#     n ) NUMEVT=$OPTARG;;
#     x ) XMLSPL=$OPTARG;;
#   esac
# done

NUMEVT=1
if [ $# -gt 0 ]; then
  NUMEVT=$1
fi

# Optionally supply an extra tag for the file name.

XMLSPL=ccqe_carbon_splines
if [ $# -gt 1 ]; then
  XMLSPL=${XMLSPL}_$2
fi
XMLSPL=${XMLSPL}.xml
echo "Using xml file $XMLSPL"

gevgen -n $NUMEVT -p 14 -t 1000060120 -e 1,2 --run 100 \
  -f 'x*exp(-x)' \
  --seed 2989819 --cross-sections $XSECSPLINEDIR/$XMLSPL \
  --event-generator-list CCQE

