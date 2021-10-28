package couplers.snippet.middleman;

/*
 * smell	: Middle man
 * reason	: 	1. terdapat beberapa class yang hanya melakukan 1 tugas, 
 * 						yaitu mendelegasikan hubungan ke kelas lain
 * 
 * solution	:	1. Remove Middle Man (class DistributorBaju, class ProdusenBaju)
 */

public class DistributorBaju {
	private ProdusenBaju produsenbaju = new ProdusenBaju();

	private ProdusenBaju getProdusenbaju() {
		return produsenbaju;
	}

	public String getKain() { //toko baju hanya ingin memesan kain, tidak perlu melalui distributor dan produsen baju
		return getProdusenbaju().getKain();
	}
	
}
