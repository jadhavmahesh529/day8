
declare -A birthMonths

for ((i=1; i<=50; i++))
do
month=$((RANDOM%12+1))
year=$((RANDOM%2+92))
birthMonths["$i"]="$month-$year"
done

for month in {1..12}
do
echo "Individuals with birthdays in month $month:"
for i in "${!birthMonths[@]}"
do
if [[ "${birthMonths[$i]}" == "$month-"* ]];
then
echo "Person $i: ${birthMonths[$i]}"
fi
done
done
