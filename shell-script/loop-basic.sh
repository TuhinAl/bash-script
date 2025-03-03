
#range for loop  (number 10 to 15)
for i in {31..40}
do
echo $i
done

#range for loop  (string)

for month in January February March April May June July August September October November December
do 
echo $month
done

#range for loop  (string)

for mission_name in lunar-mission mars-mission jupiter-mission saturn-mission mercury-mission
do 
 bash create-and-launch-rocket $mission_name
done

#range for loop  (read mission name)

for mission_name in $(cat /home/bob/mission-names.txt)
do 
bash create-and-launch-rocket $mission_name
done

#range for loop  (read file)
echo "====Districts===: "
for district in `cat ../shell-script/files/district.txt`
do
echo $district
done


#range for loop  (read filein alternate way)
echo "====Districts Duplicate ===: "
for district in $(cat ../shell-script/files/district.txt)
do
echo $district
done


#Real life usecases
#1. Read file and do some operation

# for file in $(ls ../shell-script/files/*.txt)
for file in $(ls ./linux_learn) #if relative path not work then put absolute path
do 
echo $file
done


Lab-5:

for image in $(ls images) 
do 
    if [[ $image = "*.jpeg" ]];
        then
        new_name=$(echo $image| sed 's/jpeg/jpg/g')
        mv images/$image images/$new_name
    fi
done


#2. Install list of packages
# for package in $(cat ./linux_learn/downlaod-packages.txt)
# do 
# sudo apt -y intsall $package
# done 




echo -e " Log name   \t      GET      \t      POST    \t   DELETE "
echo -e "------------------------------------------------------------"

for file in $(cat /home/bob/apps.txt)
do 
  get_requests=$(cat /var/log/apps/${file}_app.log | grep "GET" | wc -l)
  post_requests=$(cat /var/log/apps/${file}_app.log | grep "POST" | wc -l)
  delete_requests=$(cat /var/log/apps/${file}_app.log | grep "DELETE" | wc -l)
  echo -e " ${file}    \t ${get_requests}    \t    ${post_requests}   \t   ${delete_requests}"

done

