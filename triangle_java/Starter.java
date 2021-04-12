package module;

import java.util.Scanner;

public class Starter {

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		float a = 0;
		float b = 0;
		float c = 0;
		
		System.out.println("Entrer les 3 côtés du triangle");
		a = input.nextFloat();
		b = input.nextFloat();
		c = input.nextFloat();
	
		Triangle t = new Triangle(a, b, c);
		t.checkTriangle();
		
		input.close();
		
	}

}
