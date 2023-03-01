#!/bin/bash
echo "Please enetr parent directory name: eg: 2023"
read parentDir

echo "Please enter directory permission number: eg: 775"
read permission

echo "Please enter directory owner: eg:jamal"
read owner

echo "Please enter directory group: eg:www-data"
read group

for i in 01 02 03 04 05 06 07 08 09 10 11 12
do
    sudo mkdir -p "./$parentDir/$i";
    sudo chmod -R $permission "./$parentDir"
    sudo chown -R "$owner:$group" "./$parentDir"
    
done
