package dispensable.solution.duplicatecode;

public abstract class BigDogBreed {// extract superclass
	private String name; //pull up field
	private boolean isBig; //pull up field
	
	public BigDogBreed(String name, boolean isBig) {
		super();
		this.name = name;
		this.isBig = isBig;
	}

	public String getName() {
		return name;
	}

	public boolean isBig() {
		return isBig;
	}
	
	public void makeSound() { //Extract Method
		System.out.println("WOOF");
	}
	
	abstract void askBreed();
	abstract void askOrigin();
}
