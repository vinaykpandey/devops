#! /bin/bash

#ECHO COMMAND
echo Hello World
echo "Hello Vinay"

# VARIABLES
# Uppercase by convention
# Letters, numbes, underscores
echo  "VARIABLES"
NAME="Vinay" # there should be no space in assignment
echo "My name is $NAME"
echo "My name is ${NAME}" # more suitable

# USER INPUT
read -p "Enter your  name: " NAME
echo "Hello ${NAME}, nice to meet you!"

# CONDITIONS

# SIMPLE IF STATEMENT
echo  "SIMPLE IF STATEMENT"
if [ "${NAME}" == "Vinay" ] # [space ----- space]
then
    echo "Your name is ${NAME}"
fi

# IF ELSE

echo  "IF ELS STATEMENT"

if [ "${NAME}" == "VinayP" ] # [space ----- space]
then
    echo "Your name is ${NAME}"
else
    echo  "Your name is Somthing else !"
fi


# ELSE-IF  (elif)

echo  "ELSE-IF  (elif)"

if [ "${NAME}" == "VinayP" ]
then
    echo "Your name is ${NAME}"
elif [ "${NAME}" == "Vinay" ]
then
    echo "Your name is ${NAME} !"
else
    echo  "Your name is Somthing else !"
fi

# COMPARISION

NUM1=3
NUM2=5
if [ "${NUM1}" -gt "${NUM2}" ]
then
    echo "${NUM1}  is greater than ${NUM2}"

else 
    echo  echo "${NUM1}  is less than ${NUM2}"
fi


##########
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values not are equal
# val1 -gt val2 Returns true if the val1  is greater than val2
# val1 -ge val2 Returns true if the val1  is greater than or equal to val2
# val1 -lt val2 Returns true if the val1  is less than val2
# val1 -le val2 Returns true if the val1  is less than or equal to val2
##########


# FILE CONDITIONS

##########
# -d file True if the file is directory
# -e file True if the file exists (note that this is not particulary portaable, thus -f is generally used)
#
# -f file True if the provided string is a file
# -g file True if the group id is set on a file
# -r file True if the file is readable
# -s file True if the file has a non-zero size 
# -u file True if the user id is set on a file
# -w file True if the file is writable
# -x file True if the file is executable
##########

FILE="test.txt"
if [ -f "${FILE}" ]
then
    echo "File ${FILE} exist"
elif [ -e "${FILE}" ]
then
    echo "Folder ${FILE} exist"
else
      echo "File ${FILE} does not exist" 
fi


# CASE STATEMENT

read -p "Are you 21 or over ? Y/N " ANSWER
case "${ANSWER}" in 
    [yY] | [yY][eE][sS])
        echo "You can have a beer :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, no drinking"
        ;;
    *)
    echo "Please enter y/yes or n/no"
    ;;
esac


# SIMPLE FOR LOOP
NAMES="Vinay Dev Manish Manoj"
for NAME in ${NAMES}
    do
        echo "Hello ${NAME}"
done


# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
echo $FILES
NEW="new"
for FILE in $FILES
    do
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done


# WHILE LOOP - READ THROUGH THE FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./10.log"



# FUNCTION 
function sayHello(){
    echo "Hello World"
}

sayHello


# FUNCTION WITH PARAMS
function greet(){
    echo "Hello I am $1, and I am $2"
}


greet "Vinay" "SDE"


# CREATE FOLDER AND WRITE TO A FILE
mkdir hello 
touch "hello/world.txt"
echo "Hello world" >> "hello/world.txt"
echo "Created hello/world.txt"
