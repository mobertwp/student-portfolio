package ooabuser.solution.switchstatements;

public class Labrador extends Dog { //Replace Conditional with polymorphism

	public Labrador(String color, String gender) {
		super(color, gender);
	}
	
	public String getOrigin() {
		return "Newfoundland";
	}
}
