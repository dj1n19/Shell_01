#/bin/sh

str1="'\\\"?!"
str2="mrdoc"
str3="gtaio luSnemf"

#FT_NBR1="\\'?\"\\\"'\\"
#FT_NBR2="rcrdmddd"
FT_NBR1="\\\"\\\"!\\\"\\\"!\\\"\\\"!\\\"\\\"!\\\"\\\"!\\\"\\\""
FT_NBR2="dcrcmcmooododmrrrmorcmcrmomo"

base5_1=$(echo $FT_NBR1 | sed 's/\\/1/g' | sed "s/'/0/g" | sed 's/\"/2/g' | sed "s/?/3/g" | sed "s/\!/4/g")
base5_2=$(echo $FT_NBR2 | tr "$str2" "01234")

sum=$(echo "ibase=5;obase=5;$base5_1+$base5_2" | bc | xargs echo "obase=13;ibase=5;" | bc | tr "0123456789ABC" "$str3")
echo $sum
