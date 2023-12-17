#!/bin/bash
 
echo "-c to create a user"
echo "-d to delete a user"
echo "-r to reset the password of a user"
echo "-l  to list all the users " 

read -p "choose your your option: " choice

if [ $choice = "-c" ]
then
   read -p  " give the username :" name
   read -p  " give the password :" pass
   sudo useradd -p $pass $name
   echo "Done!!!"
elif [ $choice = "-d" ]
then
   read -p "give the username :" user
   if [ $user = "root" ]
   then
      echo " cannot delete this user "
   else
      sudo userdel $user
      echo "Done!!!"
   fi
elif [ $choice = "-r" ]
then
   read -p " enter the username: " new
   if [ $new = "root" ]
   then
      echo "not this user .SORRY"
   else
      sudo passwd $new
      echo "Done!!!"
   fi
elif [ $choice = "-l" ]
then
   echo "the users list is :"
   awk -F':' '{ print $1}' /etc/passwd
else
   echo "bye"
fi
