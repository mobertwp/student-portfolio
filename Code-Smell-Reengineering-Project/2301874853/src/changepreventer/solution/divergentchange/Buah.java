package changepreventer.solution.divergentchange;

import java.util.ArrayList;
import java.util.List;

public class Buah {
	private int id;

	public Buah(int id) {
		super();
		this.id = id;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public BuahDetail addBuahDetail(String name, int price, int tax) {
		BuahDetail detail = new BuahDetail();
		detail.setName(name);
		detail.setPrice(price);
		detail.setTax(tax);
		
		return detail;
	}
	
	List<BuahDetail> listBuahDetail = new ArrayList<BuahDetail>(){{
		add(addBuahDetail("apple",5000,2));
		add(addBuahDetail("orange",10000,5));
	}};

}
