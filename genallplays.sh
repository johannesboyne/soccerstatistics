cat world-cup/**/*.txt >> concatedplays.txt
cat euro-cup/**/*.txt >> concatedplays.txt
cat concatedplays.txt | grep -Ev '#|!' | grep '@' >> extractedplays.txt
