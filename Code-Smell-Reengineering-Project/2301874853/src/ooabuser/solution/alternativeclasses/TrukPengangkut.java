package ooabuser.solution.alternativeclasses;

public class TrukPengangkut {
	private int load;
	private String type;
	
	public TrukPengangkut(int load, String type) {
		super();
		this.load = load;
		this.type = type;
	}

	public int getLoad() {
		return load;
	}

	public String getType() {
		return type;
	}

	public boolean isMaxLoad(int load) { //hasil move method dan parameterized method
		if(this.type == "Jumbo") {
			return (load == 100);
		}else if(this.type == "Mini"){
			return (load == 20);
		}else
			return false;
	}
}
