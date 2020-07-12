#!/bin/sh
rm -r work/AirportArea work/AirportObj
for i in data/airports/*.dat
do 
	genapts850 --threads --input=$i --work=./work --dem-path=SRTM-1 --max-slope=0.02
done
