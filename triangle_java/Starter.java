package module;

import java.util.Scanner;

public class Starter {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		int a = 0;
		int b = 0;
		int c = 0;
// saisir les valeur des cotes des triangles 
		System.out.println("Entrer les 3 côtés du triangle");
		a = input.nextInt();
		// verifier si la saisie est correcte 
		while (a <= 0) {
			System.out.println("veuillez rentrez un entier");
			a = input.nextInt();

		}
		b = input.nextInt();
		while (b <= 0) {
			System.out.println("veuillez rentrez un entier");
			b = input.nextInt();
		}
		c = input.nextInt();
		while (c <= 0) {
			System.out.println("veuillez rentrez un entier");
			c = input.nextInt();
		}
// determination du type de triangle
		Triangle t = new Triangle(a, b, c);
		t.checkTriangle();

		input.close();

	}

}
