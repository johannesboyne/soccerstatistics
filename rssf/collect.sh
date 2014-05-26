c1=`cat *f.txt | egrep 'Germany.*[0-9]' | awk '{c1 += substr($5,0,1)} END {print c1}'`
o1=`cat *f.txt | egrep 'Germany.*[0-9]' | awk '{o1 -= substr($5,2,2)} END {print o1}'`
c2=`cat *f.txt | egrep '[0-9].Germany' | awk '{c2 -= substr($5,2,2)} END {print c2}'`
o2=`cat *f.txt | egrep '[0-9].Germany' | awk '{o2 += substr($5,0,1)} END {print o2}'`
cc=$(($c1+$c2))
oo=$(($o1+$o2))
echo "$cc:$oo"

