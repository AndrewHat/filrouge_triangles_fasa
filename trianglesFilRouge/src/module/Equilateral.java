package module;

public class Equilateral extends Triangle {

	public Equilateral(float a, float b, float c) {
		super(a, b, c);
	}
	

	@Override
	Boolean whichTriangle() {
		if ((a == c) && (a ==  b) && (b == c)) {
			System.out.println("Je suis Equilatéral !");
			return true;
		} else {
			return false;
		}
	}

}
