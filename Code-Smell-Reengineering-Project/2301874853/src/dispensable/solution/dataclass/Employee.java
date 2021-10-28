package dispensable.solution.dataclass;

public class Employee {
	private String name;	//encapsulated field
	private String address; //encapsulated field
	
	public Employee(String name, String address) {
		super();
		this.name = name;
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	
	public void printDetail() {	//move method
		System.out.println(this.name+"\n"+
							this.address+"\n");
	}
	
}
