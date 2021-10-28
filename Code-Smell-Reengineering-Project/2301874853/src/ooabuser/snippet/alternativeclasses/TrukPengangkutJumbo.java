package ooabuser.snippet.alternativeclasses;

/*
 * smell	: Alternative Class with Different Interface
 * reason	: terjadi karena developer tidak menyadari keberadaan class lain yang memiliki fungsionalitas sama
 * 				1. terdapat 2 class (TrukPengangkutMini dan TrukPengangkutJumbo) 
 * 						yang merupakan kelas dengan fungsi yang sama
 * 
 * solution	:	1a. Move Method (isLoad20() && isLoad100()) + Rename Method (isLoad20() && isLoad100())
 * 				1b. Parameterized Method (isLoad20() && isLoad100())
 * 				
 */

public class TrukPengangkutJumbo {
	private int load;

	public TrukPengangkutJumbo(int load) {
		super();
		this.load = load;
	}

	public int getLoad() {
		return load;
	}
	
	public boolean isLoad100(int load) {
		return (load == 100);
	}
}
