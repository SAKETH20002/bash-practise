
#!/bin/bash

echo  WELCOME STRANGER!!! 

echo the files and directories in the current path are: 

while true
do
   echo "to exit press - 2 "
   ls -sh
   echo "and now"
   read -p " want to press  '2' : "  x 
   if [ $x -eq 2 ]
   then
      break
   else
      continue
   fi  
done

