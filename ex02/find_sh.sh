#/bin/sh

for file in $(find . -name "*.sh")
do
	echo ${file##*/} | sed "s/.sh//g"
done
