num1=$1
num2=$2
num2=$3
sum=$((num1+num2+num3))
average=$(echo "$sum/3" | bc -l)
echo $average
#===================== alternate way==============
# sum=$((num1+num2+num3))   # sum of three numbers
# average=$(echo "$sum/3" | bc -l)  # average of three numbers
# echo $average
# echo "Average of three numbers is: $average"

#Basic calculation
A=$1
B=$2

echo "Sum is $((A+B))"

echo "Difference is $((A-B))"

echo "Product is $((A*B))"

echo "Quotient is $((A/B))"


# Calculate Aples: 
baskets=$1
apples_per_basket=$2

total_apples=`expr $baskets \* $apples_per_basket`

echo "Total Apples = $total_apples"


# Calculate Average
num1=$1
num2=$2
num3=$3
sum=$((num1+num2+num3))
average=$(echo "$sum / 3" | bc -l)
