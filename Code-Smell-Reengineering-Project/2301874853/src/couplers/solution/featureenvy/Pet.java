package couplers.solution.featureenvy;

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
	
	public void printPetData() {	//method di move ke dalam class Pet
		System.out.println(this.name+"\n"+
							this.age+" years old\n"+
							this.color+" color\n"+
							this.weight+ " kg");
	}
	
}
