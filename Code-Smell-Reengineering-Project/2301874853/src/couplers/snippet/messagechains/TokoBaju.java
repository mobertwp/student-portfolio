package couplers.snippet.messagechains;

/*
 * smell	: Message Chain
 * reason	: 	1. terdapat method yang memanggil objek 
 * 						lalu memanggil objek lainnya lalu kembali memanggil objek lainnya
 * 						hingga terjadi client request yang panjang
 * 
 * solution	: 	1a. Extract Method (method pesanKainDariProdusenKain())
 * 				1b. Hide Delegate
 * 
 */

public class TokoBaju {
	private DistributorBaju distributor = new DistributorBaju();
	
	public TokoBaju() {
		
	}
	
	public DistributorBaju getDistributor() { //perlu di hide
		return distributor;
	}

	public String pesanKainDariProdusenKain() { //perlu diextract dan dimove
		//pola $a->b()->c()->d()
		return this.distributor.getProdusenbaju().getProdusenkain().getKain();
	}
}
