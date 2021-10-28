package couplers.snippet.featureenvy;

public class Pet {
	private String name;
	private int age;
	private String color;
	private int weight;
	
	public Pet(String name, int age, String color, int weight) {
		super();
		this.name = name;
		this.age = age;
		this.color = color;
		this.weight = weight;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public String getColor() {
		return color;
	}

	public int getWeight() {
		return weight;
	}
	
}
