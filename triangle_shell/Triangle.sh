#! /bin/bash

# On evite les accents 

echo "Entrez les trois cotes de triangle"

# On s'assure que chaque valeur est superieur à zero
# L'applicaiton crash dans le cas d'une valeur float ou string
read a
if [ $a -le 0 ]; then
	echo "Erreur: les cotes ne peuvent pas etre inferieur ou egal à zero"
	echo "Réentrez la valeur"
	read a
fi
echo ""

read b
if [ $b -le 0 ]; then
	echo "Erreur: les cotes ne peuvent pas etre inferieur ou egal à zero"
	echo "Réentrez la valeur"
	read b
fi
echo ""

read c
if [ $c -le 0 ]; then
	echo "Erreur: les cotes ne peuvent pas être inferieur ou egal à zero"
	echo "Reentrez la valeur"
	read c
fi
echo ""

function scalene (){
	if [ $a -ne $b ] && [ $a -ne $c ] && [ $b -ne $c ]
	then
	echo "Je suis Scalene"
	fi	
}

function equilateral (){
	if [ $a -eq $b ] && [ $a -eq $c ] && [ $b -eq $c ]
	then
	echo "Je suis Equilateral"
	fi	
}

function isocele (){
	if [ $a -eq $b ] && [ $a -ne $c ]
	then echo "Je suis Isocele"
	fi
	
	if [ $a -eq $c ] && [ $a -ne $b ]
	then echo "Je suis Isocele"
	fi
	
	if [ $b -eq $c ] && [ $a -ne $b ]
	then echo "Je suis Isocele"
	fi
}

echo ""

# le main
isocele
scalene
equilateral