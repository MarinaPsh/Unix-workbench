ff=`ls -la | egrep ^- | wc -l`
function game {
read guess
        if [[ $guess -eq $ff ]]
        then
                echo "You've guessed it!"
                echo "Number of files is: " $guess 
        elif [[ $guess -gt $ff ]]
        then
                echo "Number of files less than:" $guess
                echo "==============================================="
                echo ""
                echo ""
                echo "Please try again. Input number of files"
        else
                echo "Number of files bigger than:" $guess
                echo "==============================================="
                echo ""
                echo ""
                echo "Please try again. Input number of files"
	fi

}
echo $ff
guess=0
echo "Please guess how many files in current drectry"
echo "Input number of files"
while [[ $guess -ne $ff ]]
do
	game
done 
