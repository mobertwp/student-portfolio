package ooabuser.snippet.temporaryfield;

import java.util.ArrayList;
import java.util.List;

/*
 * smell	: Temporary field
 * reason	: 	1. terdapat data field yang digunakan hanya pada situasi tertentu
 * 						dan biasanya tidak bernilai (null)
 * 
 * solution	:	1. Replace method with Method Object (method algorithm())
 * 
 */

public class Order {
	private List<Integer> listOrder = new ArrayList<Integer>();
	int i=0; //3 variable temp dari algorithm yang tidak digunakan selain di algorithm()
	int x=0;
	int y=10000;
	
	public Order(List<Integer> listOrder) {
		super();
		this.listOrder = listOrder;
	}

	public List<Integer> getListOrder() {
		return listOrder;
	}
	
	public int algorithm() {
		return i+x+y;
	}
	
	public void orderOperation() {
		//order operation lainnya
	}
}
