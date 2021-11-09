#/bin/sh

nblines=$(ls -l -1 | wc -l)
nblines=$(($nblines-1))
ls -l | tail -n$nblines
