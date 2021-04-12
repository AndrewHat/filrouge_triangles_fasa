package module;

public class Triangle {
	protected float a;
	protected float b;
	protected float c;
	
	public Triangle(float a, float b, float c) {
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
