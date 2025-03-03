# A variable always has a dollar sign before its name
# Variable best practices: variable names should be in lower_case with underscores to separate words

mission_name=$1
mkdir $mission_name

rocket-add $mission_name

rocket-start-power $mission_name

rocket-internal-power $mission_name

rocket-start-sequence $mission_name

rocket-start-engine $mission_name

rocket-lift-off $mission_name
# we can store the output of another command in a variable
rocket_status=$(rocket-status $mission_name)
echo "Rocket status: $rocket_status"


#===================== alternate way==============
# mkdir $1

# rocket-add $1

# rocket-start-power $1

# rocket-internal-power $1

# rocket-start-sequence $1

# rocket-start-engine $1

# rocket-lift-off $1
# # we can store the output of another command in a variable
# rocket_status=$(rocket-status $1)
# echo "Rocket status: $rocket_status"