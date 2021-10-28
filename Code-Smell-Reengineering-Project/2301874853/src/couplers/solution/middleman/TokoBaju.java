package couplers.solution.middleman;

public class TokoBaju {
	private ProdusenKain produsenkain = new ProdusenKain();
	
	private ProdusenKain getProdusenkain() {
		return produsenkain;
	}

	private String pesanKainDariProdusenKain() { //middle man sudah di-remove
		return getProdusenkain().getKain();
	}
}
