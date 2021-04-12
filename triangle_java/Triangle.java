package module;

public class Triangle {
	protected int a;
	protected int b;
	protected int c;
	
	public Triangle(int a, int b, int c) {
		this.a = a;
		this.b = b;
		this.c = c;
	}
	
	public void checkTriangle() {
		Scalene.isScalene(a, b, c);
		Isocele.isIsocele(a, b, c);
		Equilateral.isEquilateral(a, b, c);
	}
	
}
