package dispensable.solution.lazyclass;

public class Employee {
	private String name;
	private String address;
	private int id; //inline class
	
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

	public int getId() { //inline class
		return id;
	}
	
}
