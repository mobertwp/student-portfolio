package changepreventer.snippet.parallelinheritance;

/*
 * smell	: Parallel Inheritance Hierarchies
 * reason	: kesalahan developer tidak merencanakan design pattern yang baik
 * 				1. ceroboh membuat class inheritance baru
 * 
 * solution	: 	1. Move Method (method getWage)
 */

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
}
