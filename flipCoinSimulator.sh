echo "Welcome to flip coin simulator"

function flip () 
{
	coin=$((RANDOM%2))
	if [[ $coin -eq 1 ]]
	then
	echo "It's Head "
	else
	echo "It's Tail"
	fi
}
flip
