alias hgtchop=/home/delta/Programme/flightgear/new_fgmeta/install/terragear/bin/hgtchop
alias terrafit=/home/delta/Programme/flightgear/new_fgmeta/install/terragear/bin/terrafit

rm -r work/SRTM-1
for f in ${PWD}/data/SRTM-1/*.hgt; do hgtchop 1 "${f}" "${PWD}/work/SRTM-1"; done
terrafit work/SRTM-1 --threads 4  -e 0.1 -x 25000
