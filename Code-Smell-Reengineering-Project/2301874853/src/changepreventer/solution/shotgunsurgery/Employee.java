package changepreventer.solution.shotgunsurgery;

public abstract class Employee {
	private String name;
	private String address;
	private int id;
	private int workHour; //move field 
	
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
	
	public int getWorkHour() {
		return workHour;
	}

	public void setWorkHour(int workHour) {
		this.workHour = workHour;
	}

	public int getBonus(){ //move method
		if(workHour > 45) {
			return 800000;
		}else if(workHour > 36) {
			return 400000;
		}else
			return 0;
	}
	
}
