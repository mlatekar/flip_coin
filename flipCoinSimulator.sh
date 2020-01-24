echo "Welcome to flip coin simulator"
Head=0
Tail=0
function flip() 
{
for (( i=1; i<=$1; i++ ))
	do
	key=""
	for(( j=0; j<$2; j++ ))	
	do
	  if [[ $((RANDOM%2)) -eq 0 ]]
		then
			key+=H;	
		else
			key+=T;
	  fi
	done
 newkey $key
done
}
function newkey() 
{
	combination[$1]=$((${combination[$1]}+1));
}
function percentage()
{
	for i in ${!combination[@]}
	do
		combination[$i]=$((combination[$i]*100/$numOfFlip))
	done
}

read -p "do you want to flip coin(y/n) : " accept
while [[ $accept == "y" ]]
do
	read -p "Enter number of flip and number of flip :" numOfFlip coin
		declare -A combination	
		case $coin in
		1)
			flip $numOfFlip $coin
			echo "after fliping the coin :" ${!combination[@]}
			echo "number of combination :"${combination[@]}
			percentage
			echo "number of percentage : " ${combination[@]}
			;;
		2)
			flip $numOfFlip $coin
			echo "after fliping the coin :" ${!combination[@]}
         echo "number of combination :"${combination[@]}
			percentage
         echo "number of percentage : " ${combination[@]}
			;;
		*)
			 echo "not valid input"
			break;
   esac
unset combination[@]
read -p "want to continue(y/n) :" accept
done
