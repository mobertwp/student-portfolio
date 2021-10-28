package bloater.solution.primitiveobsession;

public class Person {
	private String name;
	private String gender;
	private Married family = new Married();
	
	public Person(String name, String gender) {
		super();
		this.name = name;
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public String getGender() {
		return gender;
	}
	
	public void setFamily(Married family) {
		this.family = family;
	}

	public Married getFamily() {
		return family;
	}

}
