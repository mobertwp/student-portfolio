package changepreventer.solution.parallelinheritance;

public class Waiter extends Employee {
	private int orderServed;
	
	public Waiter(String name, String address, int id) {
		super(name, address, id);
	}

	public int getOrderServed() {
		return orderServed;
	}

	public void setOrderServed(int orderServed) {
		this.orderServed = orderServed;
	}
	
	@Override
	int getWage() {
		return 5000000;
	}
	
}
