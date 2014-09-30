#!/bin/sh 

if [ $# -ne 1 ]
then 
   echo "usage :" $0 "absolute path"
   exit 
fi

echo "find src files"
find $1 -name "*.h" -o -name "*.c" -o -name "*.cpp" > cscope.files

echo "Generate cscope database"
cscope -bkq -i cscope.files

echo "Generate tags"
ctags --c-kinds=+px --c++-kinds=+px --fields=+iafksS --extra=+qf -L cscope.files
