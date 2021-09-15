
echo "**GUESSING GAME**"
echo "How many files do you have in current directory? "
read guess

function get_file {
	local number=$(ls -l | wc -l)-1
	echo $number
}

correct=$(get_file)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "Sorry, your guess was too high..."
	else 
		echo "Sorry, your guess was too low..."
	fi
	echo
	echo "Try again: "
	read guess
done

echo "Congratulations! Your guess was spot on!"
