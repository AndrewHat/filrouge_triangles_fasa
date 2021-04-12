package module;

public class Equilateral extends Triangle {

	public Equilateral(int a, int b, int c) {
		super(a, b, c);
	}
	

	public static Boolean isEquilateral(float a, float b, float c) {
		if ((a == c) && (a ==  b) && (b == c)) {
			System.out.println("Je suis Equilatéral !");
			return true;
		} else {
			return false;
		}
	}

}
