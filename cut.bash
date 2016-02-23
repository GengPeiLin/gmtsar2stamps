#!/bin/bash

region="0/2000/0/10000"

rm re_*.grd im_*.grd
cat list | while read a b c
do
  echo $a
  gmt grdmath real_$a.grd FLIPUD = tmp.grd=bf
  gmt grdsample tmp.grd -T -Gtmp.grd 
  gmt grdcut tmp.grd -R$region -Gre_$a.grd=bf
  gmt grdmath imag_$a.grd FLIPUD = tmp.grd=bf
  gmt grdsample tmp.grd -T -Gtmp.grd 
  gmt grdcut tmp.grd -R$region -Gim_$a.grd=bf
done
rm tmp.grd
