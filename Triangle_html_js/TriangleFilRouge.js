/* creation d'une fonction triangle qui va permettre de gérer les actions 
à effectuer après le clic sur le bouton valider*/

function Triangle(){

var a = document.getElementById("a").value;
var b = document.getElementById("b").value;
var c = document.getElementById("c").value;

if ( a <= 0 || b<=0 || c<= 0 ){
	
//gestion des nombres non valides 

	alert("veuillez entrer des nombres strictement positifs");
}
	else{
		
// Indication de la nature du triangle en fonction de la longueur des cotés 

		if (a != b && b != c && c != a){
	window.open("Triangle_scalene.html");
		}
		
		if ((a == c) && (a == b) && (b == c)){
	window.open("Triangle_equilateral.html");
		}
		
		if ((a == b && a != c) || (a == c && a != b) || (b == c && b != a)){
	window.open("Triangle_Isocele.html");
		}

}
}