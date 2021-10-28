package couplers.solution.messagechains;

public class DistributorBaju {
	private ProdusenBaju produsenbaju = new ProdusenBaju();

	private ProdusenBaju getProdusenbaju() { //Hide Delegate, access diubah menjadi private
		return produsenbaju;
	}

	public String getKain() { //method telah diextract
		return getProdusenbaju().getKain();
	}
	
}
