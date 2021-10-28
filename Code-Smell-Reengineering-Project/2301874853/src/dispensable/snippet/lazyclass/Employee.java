package dispensable.snippet.lazyclass;

/*
 * smell	: Lazy Class
 * reason	: 	1. sebuah class tidak melakukan banyak hal 
 * 						dan atau tidak ada future development yang dilakukan ke class tersebut
 * 
 * solution	: 	1. Inline Class (class id)
 */

public class Employee {
	private String name;
	private String address;
	private Id id;
	
	public Employee(String name, String address, Id id) {
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

	public Id getId() {
		return id;
	}
	
}
