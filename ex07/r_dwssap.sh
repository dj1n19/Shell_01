#/bin/sh
FT_LINE1=7
FT_LINE2=15

nblines=$(cat /etc/passwd | grep -v "^#" | wc -l)
nblines=$(($nblines-2))

output=$(cat /etc/passwd | grep -v "^#" | tail -n$nblines | cut -d ":" -f 1 | rev | sort -r | head -n$FT_LINE2 | tail -n$FT_LINE1 | awk 1 ORS=', ' | xargs)
echo "${output%,}."
