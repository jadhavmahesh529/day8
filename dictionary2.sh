
declare -A rolls


while true
do
roll=$((1 + RANDOM % 6))
rolls[$roll]=$((${rolls[$roll]} + 1))

if [[ ${rolls[$roll]} -eq 10 ]];
then
break
fi
done

max=1
min=1

for i in ${!rolls[@]}
do
if [[ ${rolls[$i]} -gt ${rolls[$max]} ]];
then
max=$i
fi

if [[ ${rolls[$i]} -lt ${rolls[$min]} ]];
then
min=$i
fi
done

echo "Results:"
echo "${rolls[@]}"
echo "Number that reached maximum times: $max"
echo "Number that reached minimum times: $min"
