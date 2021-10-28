package changepreventer.solution.parallelinheritance;

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
	
	@Override
	int getWage() {
		return 4750000;
	}
	
}
