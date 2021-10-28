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

public class ProdusenBaju {
	private ProdusenKain produsenkain = new ProdusenKain();

	public ProdusenBaju() {
		
	}
	
	public ProdusenKain getProdusenkain() { //perlu di hide
		return produsenkain;
	}
}
