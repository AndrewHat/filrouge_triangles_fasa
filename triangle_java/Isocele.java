package module;

public class Isocele extends Triangle {

	public Isocele(float a, float b, float c) {
		super(a, b, c);
	}

	public static Boolean isIsocele(float a, float b, float c) {
		if ((a == b && a !=c) || (a == c && a != b) || (b == c && b != a)) {
			System.out.println("Je suis Isoc�le !");
			return true;
		} else {
			return false;
		}

	}

	}

