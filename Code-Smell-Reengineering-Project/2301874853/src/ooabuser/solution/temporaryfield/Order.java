package ooabuser.solution.temporaryfield;

import java.util.ArrayList;
import java.util.List;

public class Order {
	private List<Integer> listOrder = new ArrayList<Integer>();
	
	public Order(List<Integer> listOrder) {
		super();
		this.listOrder = listOrder;
	}

	public List<Integer> getListOrder() {
		return listOrder;
	}

	public int algorithm() {
		return new OrderAlgorithm(this).algorithm(); //replace method with method object
	}
	
	public void orderOperation() {
		//order operation lainnya
	}
}
