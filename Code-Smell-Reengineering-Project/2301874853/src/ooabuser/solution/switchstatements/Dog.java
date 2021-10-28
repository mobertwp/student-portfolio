package ooabuser.solution.switchstatements;

public abstract class Dog {
	String color;
	String gender;
	
	public Dog(String color, String gender) {
		super();
		this.color = color;
		this.gender = gender;
	}
	public String getColor() { //replace parameter with explicit method
		return color;
	}
	public String getGender() { //replace parameter with explicit method
		return gender;
	}

	abstract String getOrigin(); //Replace Conditional with polymorphism
}
