#!/bin/zsh

for i in *.json
do              
  base=`basename $i .json`
  ./jsonld2ttl $i > $base.ttl
  rapper -i turtle -o ntriples $base.ttl > $base.nt
done
