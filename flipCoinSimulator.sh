echo "Welcome to flip coin simulator"
Head=0
Tail=0
declare -A combination
function flip () 
{
	for (( i=1; i<=$number; i++ ))
	do
	coin=$((RANDOM%2))
	if [[ $coin -eq 1 ]]
	then
	echo "It's Head "
	((Head++))
	combination[Head]=$Head
	else
	echo "It's Tail"
	((Tail++))
	combination[Tail]=$Tail
	fi
done
}
read -p "Enter the number of time to flip a coin " number
flip
#echo "Head : " $Head "Tail : " $Tail
echo "Head : "${combination[Head]} "Tail : " ${combination[Tail]}
headper=$((${combination[Head]}*100/$number))
echo "Head percentage : " $headper"%"
tailper=$((${combination[Tail]}*100/$number))
echo "Tail percentage : " $tailper"%"
