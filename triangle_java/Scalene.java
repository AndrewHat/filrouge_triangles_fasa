package module;

public class Scalene extends Triangle {

	public Scalene(int a, int b, int c) {
		super(a, b, c);
	}


	public static Boolean isScalene(int a, int b, int c) {
		if (a != b && b != c && c != a) {
			System.out.println("Je suis Scalène ");
			return true;
		} else {
			return false;
		}
	}
}
