while true 
do
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
echo "5. Quit"
read -p "Enter your choice: " choice

if [ $choice -eq 1 ]; 
then 
    read -p "Enter First number: " number1
    read -p "Enter Second number: " number2
    echo Answer=$(($number1 + $number2))
elif [ $choice -eq 2 ]; 
then
    read -p "Enter First number: " number1
    read -p "Enter Second number: " number2
    echo Answer=$(($number1 - $number2))
elif [ $choice -eq 3 ]; 
then
    read -p "Enter First number: " number1
    read -p "Enter Second number: " number2
    echo Answer=$(($number1 * $number2))
elif [ $choice -eq 4 ]; 
then
    read -p "Enter First number: " number1
    read -p "Enter Second number: " number2
    echo Answer=$(($number1 / $number2))
elif [ $choice -eq 5 ]; 
then
    exit
else
    echo "Invalid choice, choice should be between 1 to 5"
fi
done 

# Alternate: Using case statement
while true 
do
echo "1. Add"
echo "2. Subtract"
echo "3. Multiply"
echo "4. Divide"
echo "5. Average"
echo "6. Quit"
read -p "Enter your choice: " choice

    case $choice in 
        1)  read -p "Enter First number: " number1
            read -p "Enter Second number: " number2
            echo Answer=$(($number1 + $number2)) ;;

        2)  read -p "Enter First number: " number1
            read -p "Enter Second number: " number2
            echo Answer=$(($number1 - $number2)) ;;

        3)  read -p "Enter First number: " number1
            read -p "Enter Second number: " number2
            echo Answer=$(($number1 * $number2)) ;;

        4)  read -p "Enter First number: " number1
            read -p "Enter Second number: " number2
            echo Answer=$(($number1 / $number2)) ;;

        5)  read -p "Enter First number: " number1
            read -p "Enter Second number: " number2
            echo Answer=$(( ($number1 + $number2)/2 )) ;;
        6)  exit ;;

        *) continue ;;
    esac
done


#Lab-5: Case statement, Print Red & Green Color
color=$1
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

    case $color in
        red) echo "${red}this is red${reset}";;
        green) echo "${green}this is green${reset}" ;;
        *) echo "red and green are the only choices.";;
    esac