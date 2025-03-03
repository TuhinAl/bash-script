echo "Hi there, hope you are doing well"
echo "I'm Installing your software"
read -p "do you agree with the term and condition? type[Yes-y/No-n]? " answer # -p stands for promts
echo $answer


mission_name=$1

mkdir $mission_name

rocket-add $mission_name

rocket-start-power $mission_name
rocket-internal-power $mission_name
rocket-start-sequence $mission_name
rocket-start-engine $mission_name
rocket-lift-off $mission_name

rocket-status $mission_name