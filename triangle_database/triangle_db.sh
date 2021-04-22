#!/bin/bash

NBMAX=500
index=1

l=$(wc -l < triangle.sql)
h=$(head -n 9 triangle.sql)

if [ $l -gt $NBMAX ]; then
  echo "$h" > triangle.sql
  echo "testo"
fi

echo "Génération des triangles aléatoires : "
echo "-----------------"
echo "" >> triangle.sql
echo "INSERT INTO triangle(A, B, C, ID) VALUES" >> triangle.sql

while [ "$index" -lt $NBMAX ]      # Génère 500 entiers aléatoires.
do
  
  A=$RANDOM
  let "A %= 11"
  let "A++"

  B=$RANDOM
  let "B %= 11"
  let "B++"

  C=$RANDOM
  let "C %= 11"
  let "C++"

  echo "('$A','$B','$C','$index')," >> triangle.sql
    
  let "index += 1" 
 
done

A=$RANDOM
let "A %= 11"
let "A++"

B=$RANDOM
let "B %= 11"
let "B++"

C=$RANDOM
let "C %= 11"
let "C++"

echo "('$A','$B','$C','$index');" >> triangle.sql

# cat triangle.sql | mysql -u root -p