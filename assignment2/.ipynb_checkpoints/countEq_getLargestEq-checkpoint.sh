numberEarthquakes=$(cut -f3 Year_Mag_Count.tsv | grep -x "$1" | wc -l)
echo " Total number of earthquakes $1 $numberEarthquakes" 

LargestEarthquake=$(cut -f2,3 Year_Mag_Count.tsv | sort -nr | grep "$1" | head -n 1 | cut -f1)
echo "The Largest Earthquake there: $LargestEarthquake"