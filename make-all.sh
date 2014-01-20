#!/bin/sh

for TMPL_DIR in */; do
  cd $TMPL_DIR
  make || { echo "Error building in $TMPL_DIR"; exit -1; }
  cd ..
done
