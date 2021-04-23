#!/bin/bash

NBMAX=500
index=1
limit=10
m=0
n=0
p=0

function scalene ()
{
	if [ $A -ne $B ] && [ $A -ne $C ] && [ $B -ne $C ]
	then let "m += 1" 
	fi	
}
function equilateral ()
{
	if [ $A -eq $B ] && [ $A -eq $B ] && [ $B -eq $C ]
	then
	let "n += 1" 
	fi	
}
function isocele ()
{
	if [ $A -eq $B ] && [ $A -ne $C ]
	then let "p += 1" 
	fi
	
	if [ $A -eq $C ] && [ $A -ne $B ]
	then let "p += 1" 
	fi
	
	if [ $B -eq $C ] && [ $A -ne $B ]
	then let "p += 1" 
	fi
}



## recharger le sql pour recharger un bdd de NBMAX triangles
l=$(wc -l < triangle.sql)
h=$(head -n 9 triangle.sql)
if [ $l -gt $NBMAX ]; then
  echo "$h" > triangle.sql
fi

## TODO mettre ici le sql pour creer la database et les tables
echo "Génération des triangles aléatoires : "
echo "-----------------"
echo "" >> triangle.sql
echo "INSERT INTO triangle(A, B, C, ID) VALUES" >> triangle.sql

while [ "$index" -lt $NBMAX ]      # Génère 500 entiers aléatoires.
do
  
  A=$RANDOM
  let "A %= limit"
  let "A++"

  B=$RANDOM
  let "B %= limit"
  let "B++"

  C=$RANDOM
  let "C %= limit"
  let "C++"

  echo "('$A','$B','$C','$index')," >> triangle.sql
    
  let "index += 1" 
 
  scalene
  equilateral
  isocele

done

# dernière itération pour ecrire le ;
A=$RANDOM
let "A %= limit"
let "A++"

B=$RANDOM
let "B %= limit"
let "B++"

C=$RANDOM
let "C %= limit"
let "C++"

echo "('$A','$B','$C','$index');" >> triangle.sql

scalene
equilateral
isocele

# charge le sql dans le gestionnaire mysql
cat triangle.sql | mysql -u root

# statistique des triangles generes
percent_sc=$(bc -l <<< $m / $NBMAX *100)
percent_eq=$(bc -l <<< $n / $NBMAX*100)
percent_is=$(bc -l <<< $p / $NBMAX *100)

echo "$m scalene, $n equilateral, $p isocele, $NBMAX total" > log
echo "pourcentage des triangles scalenes = $percent_sc" >> log
echo "pourcentage des triangles equilaterals = $percent_eq" >> log
echo "pourcentage des triangles isoceles = $percent_is" >> log
cat log
