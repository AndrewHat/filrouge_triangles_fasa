package module;

public abstract class Triangle {
	protected float a;
	protected float b;
	protected float c;
	
	public Triangle(float a, float b, float c) {
		this.a = a;
		this.b = b;
		this.c = c;
	}
	
	abstract Boolean whichTriangle();
	
}
