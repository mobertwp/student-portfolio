package ooabuser.snippet.alternativeclasses;

/*
 * smell	: Alternative Class with Different Interface
 * reason	: terjadi karena developer tidak menyadari keberadaan class lain yang memiliki fungsionalitas sama
 * 				1. terdapat 2 class (TrukPengangkutMini dan TrukPengangkutJumbo) 
 * 						yang merupakan kelas dengan fungsi yang sama
 * 
 * solution	:	1a. Move Method (isLoad20() && isLoad100()) + Rename Method (rename menjadi isMaxLoad())
 * 				1b. Parameterized Method (isLoad20() && isLoad100())
 * 				
 */

public class TrukPengangkutMini {
	private int load;

	public TrukPengangkutMini(int load) {
		super();
		this.load = load;
	}

	public int getLoad() {
		return load;
	}
	
	public boolean isLoad20(int load) {
		return (load == 20);
	}
}
