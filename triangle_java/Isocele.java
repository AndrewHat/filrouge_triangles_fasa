package module;

public class Isocele extends Triangle {

	public Isocele(int a, int b, int c) {
		super(a, b, c);
	}

	public static Boolean isIsocele(int a, int b, int c) {
		if ((a == b && a !=c) || (a == c && a != b) || (b == c && b != a)) {
			System.out.println("Je suis Isocèle !");
			return true;
		} else {
			return false;
		}

	}

	}

