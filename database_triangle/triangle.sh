#!/bin/bash

NBMAX=500
index=1

echo
echo "Génération des triangles aléatoires : "
echo "-----------------"
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

cat triangle.sql | mysql -u root -p




