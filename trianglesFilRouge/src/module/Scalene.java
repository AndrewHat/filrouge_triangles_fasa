package module;

public class Scalene extends Triangle {

	public Scalene(float a, float b, float c) {
		super(a, b, c);
	}

	@Override
	Boolean whichTriangle() {
		if (a != b && b != c && c != a) {
			System.out.println("Je suis Scalène ");
			return true;
		} else {
			return false;
		}
	}
}
