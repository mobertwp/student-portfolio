package bloater.solution.dataclumps;

public class Employee {
	private String name;
	private String address;
	private int id;
	private String department;
	
	public Employee(String name, String address, int id, String department) {
		super();
		this.name = name;
		this.address = address;
		this.id = id;
		this.department = department;
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

	public String getDepartment() {
		return department;
	}
	
	public void printEmployeeDetail(){
		System.out.println(this.name+"\n"+
				this.address+"\n"+
				this.id+"\n"+
				this.department+"\n");
	}
	
	public void printEmployeeManager() {
		//print employee manager
	}
	
	public void printEmployeeSchedule() {
		//print schedule
	}
	
}
