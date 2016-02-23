#!/bin/bash 

rm real_*grd imag_*grd
cat list | while read name prm date 
do
  echo $name  
  ln -s ../intf/"$name"/real.grd real_"$name".grd 
  ln -s ../intf/"$name"/imag.grd imag_"$name".grd 
done
