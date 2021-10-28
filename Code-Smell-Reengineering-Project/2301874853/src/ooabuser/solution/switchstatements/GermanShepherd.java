package ooabuser.solution.switchstatements;

public class GermanShepherd extends Dog { //Replace Conditional with polymorphism

	public GermanShepherd(String color, String gender) {
		super(color, gender);
	}

	public String getOrigin() {
		return "Germany";
	}

}
