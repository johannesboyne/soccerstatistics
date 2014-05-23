{
  if ($4 == c) {
    totalB += substr($5,0,1); totalO -= substr($5,2,2);
  } else {
  if ($6 == c) {
    totalO += substr($5,0,1)
    totalB += substr($5,2,2)*-1
  }
  }
} END {
  if (totalO == 0) {
    print toupper(substr(c, 0, 3)) "-vs. ?: \t" totalB ":" totalO " or " 0 " times the opponent"
  } else {
    print toupper(substr(c, 0, 3)) "-vs. ?: \t" totalB ":" totalO " or " totalB/totalO " times the opponent"
  }
}
