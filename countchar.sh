#store the number of arguments in a variable
filecount=$#
echo "Number of files: $filecount"

#start a counter to traverse through all the input file names
counter=1

#loop until the counter reaches the total file count
#i.e. until counter is less than or equal to the file count
while [ $counter -le $filecount ]
do
        #retrieve the number of occurance of a character in the inputed file
        # $1 is used to get the value of the first argument
        occurances=$(grep -c "e" $1)

        #display the value on console
        echo "Occurance of \"e\" in file \"$1\":$occurances"

        #increament the counter
        counter=$(expr $counter + 1)

        #this is required to move to the next command line argument which can be accessed using $1 next time
        shift 1
done
#end of loop
