country1=$1
country2=$2

getCountryResults(){
  country=$1
  cat concatedplays.txt | egrep "\(\d?\d\).*$country" | awk -f getsta.awk -v c=$country 
}

echo "Cup: \n---------";
getCountryResults $country1
getCountryResults $country2
