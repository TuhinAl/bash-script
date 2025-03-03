# find largest number from three given number
if [ $# -ne 3 ]; then  # $# is used to get the number of arguments passed to the script
   echo "Please provide all three numeric argument"
   exit 1
fi

num1=$1
num2=$2
num3=$3

if [ $num1 == $num2 ] && [ $num1 == $num3 ]; then
echo "All three numbers are equal"

elif [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
echo " $num1 is the largest number"

elif [ $num2 -gt num1 ] && [ $num2 -gt $num3 ]; then
echo "$num2 is the largest number"

else
echo "$num3 is the largest number"
fi