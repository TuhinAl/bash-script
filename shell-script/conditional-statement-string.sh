# print the number of month in words
month_num=$1

#Check if month number is given
if [ $# -ne 1 ]; then
    echo "No month number given"
    exit 1
fi

#alternate check
if [ -z $month_number ]; # `-z` is a unary operator used in shell scripting to test if a string is empty.
then
  echo "No month number given."
  exit
fi


#Invalid months name check
if [[ $month_num -lt 1 ]] || [[ $month_num -gt 12 ]]; then
    echo "Invalid month month_number given"
    exit 1
fi

if [ $month_num -eq 1 ]; then
    echo "January"
elif [ $month_num -eq 2 ]; then
    echo "February"
elif [ $month_num -eq 3 ]; then
    echo "March"
elif [ $month_num -eq 4 ]; then
    echo "April"
elif [ $month_num -eq 5 ]; then
    echo "May"
elif [ $month_num -eq 6 ]; then
    echo "June"
elif [ $month_num -eq 7 ]; then
    echo "July"
elif [ $month_num -eq 8 ]; then
    echo "August"
elif [ $month_num -eq 9 ]; then
    echo "September"
elif [ $month_num -eq 10 ]; then
    echo "October"
elif [ $month_num -eq 11 ]; then
    echo "November"
elif [ $month_num -eq 12 ]; then
    echo "December"
fi


#======================================= Month Name with case statement ========================================
month_num=$1

if [ $# -ne 1 ]; then
    echo "No month number given"
    exit 1
fi

if [[ $month_num -lt 1 ]] || [[ $month_num -gt 12 ]]; then
    echo "Invalid month month_number given"
    exit 1
fi
case $month_num in
    1) echo "January" ;;
    2) echo "February" ;;
    3) echo "March" ;;
    4) echo "April" ;;
    5) echo "May" ;;
    6) echo "June" ;;
    7) echo "July" ;;
    8) echo "August" ;;
    9) echo "September" ;;
    10) echo "October" ;;
    11) echo "November" ;;
    12) echo "December" ;;
esac

if [ $month_num -eq 1 ]; then
    echo "January"
elif [ $month_num -eq 2 ]; then
    echo "February"
elif [ $month_num -eq 3 ]; then
    echo "March" 
elif [ $month_num -eq 4 ]; then
    echo "April"
elif [ $month_num -eq 5 ]; then
    echo "May"
elif [ $month_num -eq 6 ]; then
    echo "June"
elif [ $month_num -eq 7 ]; then
    echo "July"
elif [ $month_num -eq 8 ]; then
    echo "August"
elif [ $month_num -eq 9 ]; then
    echo "September"
elif [ $month_num -eq 10 ]; then
    echo "October"
elif [ $month_num -eq 11 ]; then
    echo "November"
elif [ $month_num -eq 12 ]; then
    echo "December"
fi