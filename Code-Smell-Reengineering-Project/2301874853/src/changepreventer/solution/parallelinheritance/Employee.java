package changepreventer.solution.parallelinheritance;

public abstract class Employee {
	private String name;
	private String address;
	private int id;
	
	public Employee(String name, String address, int id) {
		super();
		this.name = name;
		this.address = address;
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public int getId() {
		return id;
	}
	
	abstract int getWage();
}
