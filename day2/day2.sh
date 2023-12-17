#!/bin/bash
# this is a scrpit  for  see data of the files and directories in the current path 
echo  WELCOME STRANGER!!! 

echo "the files and directories in the current path are: "
ls -S
echo " the size of the directories and files in current path are : "

while true
do
   
   ls -lh
   echo "and now want to exit  press 2"
   read -p "  just  press 2 : "  x 
   if [ $x -eq 2 ]
   then
      echo "-------------thanks for pressing 2  I will sleep 2s and I will come again!  ---------------"
      sleep 2s  
      break
   else
      continue
   fi  
done

echo "Hello again"

while true
do
  read -p "enter a text my stranger!! :" a
  if [ -z $a ]
  then
        echo "Exiting the Interactive Explorer. Goodbye!"
        break
  fi
  echo $a > new_file.txt
  echo "(a count of space is added )the count of text is :"
  wc -m < new_file.txt
done
