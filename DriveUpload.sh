#!/bin/sh

processes=4

for directory in /mnt/d/Archbold_ARU_Data/* # D:\Archbold_ARU_data
do
    ((i=i%$processes)); i=$((i+1)) && wait
    echo "Reading directory: "
    echo $directory
    iput -rPT $directory /iplant/home/shared/FL_CorridorObservatory/ARU_data/ &
done
