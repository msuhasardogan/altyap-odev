#!/bin/bash


directory="/home/vboxuser/Masaüstü/altyap-odev/proje.sh"


for file in $directory/*; do

  filename=$(basename "$file")
 
  deletedate=$(stat -c %y "$file")
 
  createdate=$(stat -c %w "$file")
 
  echo "$createdate $deletedate $filename" >> /home/vboxuser/Masaüstü/altyap-odev/odev.txt
done