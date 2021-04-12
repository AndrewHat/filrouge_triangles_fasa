#! /bin/bash
echo " rentrez les trois cotes de triangle"
read a 
read b
read c

function scalene (){
	if [ $a -ne $b ] && [ $a -ne $c ] && [ $b -ne $c ]
	then
	echo " Je suis Scaléne"
	fi	
}

function equilateral (){
	if [ $a -eq $b ] && [ $a -eq $c ] && [ $b -eq $c ]
	then
	echo " Je suis Equilateral"
	fi	
}

function isocele (){
	if [ $a -eq $b ] && [ $a -ne $c ]
	then echo " Je suis Isocéle"
	fi
	
	if [ $a -eq $c ] && [ $a -ne $b ]
	then echo " Je suis Isocéle"
	fi
	
	if [ $b -eq $c ] && [ $a -ne $b ]
	then echo " Je suis Isocéle"
	fi
}

isocele
scalene
equilateral