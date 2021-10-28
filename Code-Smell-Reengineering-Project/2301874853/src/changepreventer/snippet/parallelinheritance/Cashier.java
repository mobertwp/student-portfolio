package changepreventer.snippet.parallelinheritance;

/*
 * smell	: Parallel Inheritance Hierarchies
 * reason	: kesalahan developer tidak merencanakan design pattern yang baik
 * 				1. ceroboh membuat class inheritance baru
 * 
 * solution	: 	1. Move Method (method getWage)
 */

public class Cashier extends Employee {
	private String cashierNumber;
	
	public Cashier(String name, String address, int id) {
		super(name, address, id);
	}

	public String getCashierNumber() {
		return cashierNumber;
	}

	public void setCashierNumber(String cashierNumber) {
		this.cashierNumber = cashierNumber;
	}
	
}
