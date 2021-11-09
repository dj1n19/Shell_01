#/bin/sh

base1="'\\\"?!"
base2="mrdoc"
base3="gtaio luSnemf"

FT_NBR1="\\'?\"\\\"'\\"
FT_NBR2="rcrdmddd"

base5_1=$(echo $FT_NBR1 | sed 's/\\/1/g' | sed "s/'/0/g" | sed 's/\"/2/g' | sed "s/?/3/g" | sed "s/\!/4/g")
base5_2=$(echo $FT_NBR2 | tr "$base2" "01234")

echo $base5_1
echo $base5_2

sum=$(echo "ibase=5;obase=5;$base5_1+$base5_2" | bc | xargs echo "ibase=5;obase=23;" | bc | tr "0123456789ABC" "$base3")
echo $sum



#echo "\\" | sed 's/\\/0/g'
#echo "'" | sed "s/'/1/g"
#echo "\"" | sed 's/\"/2/g'
#echo "?" | sed "s/?/3/g"
#echo "!" | sed "s/\!/4/g"

#echo $(echo $FT_NBR1 | sed 's/\\/1/g' | sed "s/'/0/g" | sed 's/\"/2/g' | sed "s/?/3/g" | sed "s/\!/4/g")
