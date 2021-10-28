package dispensable.solution.duplicatecode;

public class GermanShepherd extends BigDogBreed{

	public GermanShepherd(String name, boolean isBig) { //pull up constructor body
		super(name, isBig);
	}
	
	public void askBreed() {
		System.out.println("I am a German Shepherd");
		makeSound(); //method extracted
	}
	
	public void askOrigin() {
		System.out.println("I am from Germany");
		makeSound(); //method extracted
	}
}
