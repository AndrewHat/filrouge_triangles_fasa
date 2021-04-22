#!/bin/bash  
# $RANDOM 
# Échelle : 1 - 10 (entier signé sur 16 bits).

NBMAX=500
index=1

echo
echo "Génération des triangles aléatoires : "
echo "-----------------"
while [ "$index" -le $NBMAX ]      # Génère 500 entiers aléatoires.
do
  
A=$RANDOM
let "A %= 11"
let "A++"


B=$RANDOM
let "B %= 11"
let "B++"


coteC=$RANDOM
let "C %= 11"
let "C++"


echo "INSERT INTO triangle(A, B, C,ID) VALUES ('$A','$B','$C','$index');">> tmp.txt
  
  let "index += 1" 
 
done


