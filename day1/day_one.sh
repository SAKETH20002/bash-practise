#!/bin/bash
#
 set -x

#"#" is used for comment.

echo "HELLO STRANGER "

#declaring variables

a=12
b=10
expr $a + $b

 #"$_" the last argument of the previous command.
 echo  $_
#"$*" All the arguments on the command line.
echo $*

# commandline arrguments.
echo "give a name"

sleep 3s

echo  $1 "is a nice name "

#"$#" the number of command-line arguments.
echo $#

# wild card 
# "*" is a wild card which help to search files .
ls f*
