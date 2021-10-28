package bloater.snippet.dataclumps;

/*
 * smell	: Data Clumps
 * reason	: terjadi karena developer melakukan copy paste tanpa refactoring
 * 				1. terdapat kelompok data field yang digunakan berulang kali sebagai parameter
 * 
 * solution	: 	1. Extract Class (hasil extract: class Employee)
 * 
 */

public class ShowEmployeeDetail {
	
	static void printEmployeeDetail(String name, String address, int id,String department){
		System.out.println(name+"\n"+
							address+"\n"+
							id+"\n"+
							department+"\n");
	}
	
	static void printEmployeeManager(int id, String department) {
		//print employee manager
	}
	
	static void printEmployeeSchedule(int id, String department) {
		//print schedule
	}
	
	public static void main(String[] args) {
		String name = "Ari";
		String address = "Jalan 12";
		int id = 102;
		String department = "HR";
		
		printEmployeeDetail(name, address, id, department);
		printEmployeeManager(id, department);
		printEmployeeSchedule(id, department);
	}

}
