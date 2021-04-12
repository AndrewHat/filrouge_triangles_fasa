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
		
		Isocele t = new Isocele(a, b, c);
		Scalene s = new Scalene(a, b, c);
		Equilateral u = new Equilateral(a, b, c);
		
		t.whichTriangle();
		s.whichTriangle();
		u.whichTriangle();
		
		input.close();
		
	}

}
