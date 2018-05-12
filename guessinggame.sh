# to count how many files is in the current directory
function fileCount {
	echo $(ls -l | egrep ^- | wc -l)
}

# to read the user's guess
function readGuess {
        read input
	echo $input
}

guess=-1 # set guess so it'll never be equal to number of files so the program enters the loop

while [[ guess -ne $(fileCount) ]]
do
	echo "How many files are in the current directory?" #asking user to enter the text
	let guess=$(readGuess) # reads user's guess

	#evaluates the guess and prompts a message accordingly
	if [[ $guess -gt $(fileCount) ]] 
	then
		echo "Too High!"
	elif [[ $guess -lt $(fileCount) ]]
	then
		echo "Too Low!"
	else
		echo "Congratulation...You guessed Right!"
	fi
done
