package changepreventer.snippet.parallelinheritance;

/*
 * smell	: Parallel Inheritance Hierarchies
 * reason	: kesalahan developer tidak merencanakan design pattern yang baik
 * 				1. ceroboh membuat class inheritance baru
 * 
 * solution	: 	1. Move Method (method getWage)
 */

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
	
}
