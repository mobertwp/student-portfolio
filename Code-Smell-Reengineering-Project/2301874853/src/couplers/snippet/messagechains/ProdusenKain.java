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

public class ProdusenKain {
	private String kain = "";
	
	public ProdusenKain() {
		
	}

	public String getKain() {
		return kain;
	}
	
}
