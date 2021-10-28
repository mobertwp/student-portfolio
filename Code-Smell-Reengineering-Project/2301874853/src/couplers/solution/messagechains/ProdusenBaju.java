package couplers.solution.messagechains;

public class ProdusenBaju {
	private ProdusenKain produsenkain = new ProdusenKain();
	
	private ProdusenKain getProdusenkain() { //Hide Delegate, access diubah menjadi private
		return produsenkain;
	}
	
	public String getKain() { //method telah diextract
		return getProdusenkain().getKain();
	}
}
