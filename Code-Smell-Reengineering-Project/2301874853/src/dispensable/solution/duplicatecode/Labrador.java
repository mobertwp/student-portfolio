package dispensable.solution.duplicatecode;

public class Labrador extends BigDogBreed{
	
	public Labrador(String name, boolean isBig) { //pull up constructor body
		super(name, isBig);
	}
	
	public void askBreed() {
		System.out.println("I am a Labrador Retriever");
		makeSound(); //method extracted
	}
	
	public void askOrigin() {
		System.out.println("I am from Newfoundland");
		makeSound(); //method extracted
	}
}
