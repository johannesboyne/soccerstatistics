country=$1
cat *f.txt | \
  egrep "$country" | \
  egrep '([0-9][0-9]\.[0-9][0-9]\.[0-9][0-9])|(([0-9]|[0-9][0-9])- ([0-9]|[0-9][0-9])-[0-9][0-9])' | \
  sed -E -e 's/([0-9][0-9]\.[0-9][0-9]\.[0-9][0-9])|(([0-9]|[0-9][0-9])- ([0-9]|[0-9][0-9])-[0-9][0-9])//' | \
  sed -E -e 's/West|Town|York|Elizabeth//g' | \
  awk '{print $2 " " $3 " " $4}' | \
  awk -v c=$country '{ _i += 1; if ($1 == c) { c_r = substr($2,0,1); c_o = substr($2,2,2)*-1 } else { c_r = substr($2,2,2)*-1; c_o = substr($2,0,1) } print c_r }'

#  awk '{ _i += 1; if ($1 == "Germany") { c_r = substr($2,0,1); c_o = substr($2,2,2)*-1 } else { c_r = substr($2,2,2)*-1; c_o = substr($2,0,1) } print _i " " c_r " " c_o }'
