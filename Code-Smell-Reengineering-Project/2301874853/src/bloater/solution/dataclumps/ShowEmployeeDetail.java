package bloater.solution.dataclumps;

public class ShowEmployeeDetail {
	
	public static void main(String[] args) {
		Employee employee = new Employee("Ari","Jalan 12",102,"HR"); //extract class
		
		employee.printEmployeeDetail();
		employee.printEmployeeManager();
		employee.printEmployeeSchedule();
	}

}
