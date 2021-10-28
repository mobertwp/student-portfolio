package dispensable.snippet.duplicatecode;

/*
 * smell	: Duplicate code
 * reason	: terjadi krn developer tidak menyadari keberadaan code serupa atau hasil kebiasaan 'copy-paste'
 * 				1. Terdapat bagian-bagian code yang sama/mirip di antara class-class tertentu
 * 
 * solution	: 	1a. Extract Superclass (superclass BigDogBreed) 
 * 				1b. Extract Method (method makeSound())
 * 				1c. Pull Up Field (String name, boolean isBig)
 * 				1d. Pull Up Constructor Body
 * 
 */

public class Labrador{
	private String name;
	private boolean isBig;
	
	public Labrador(String name, boolean isBig) {
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

	public void askBreed() {
		System.out.println("I am a Labrador Retriever");
		System.out.println("WOOF");
	}
	
	public void askOrigin() {
		System.out.println("I am from Newfoundland");
		System.out.println("WOOF");
	}
}
