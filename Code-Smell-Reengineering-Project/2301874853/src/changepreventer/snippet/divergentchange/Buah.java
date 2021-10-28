package changepreventer.snippet.divergentchange;

/*
 * smell	: Divergent Change
 * reason	: terjadi karena "copypasta" programming atau developer tidak melakukan refactoring dengan baik
 * 				1. Ketika ingin menambahkan suatu terhadap class diperlukan perubahan ke banyak method
 * 
 * solution	: 	1. Extract Class (class Buah)
 */

public class Buah {
	private int id;

	public Buah(int id) {
		super();
		this.id = id;
	}
	
	public String getName() {
		switch(this.id) {
		case 1:
			return "apple";
		case 2:
			return "orange";
		default:
			return "unknown";
		}
	}
	
	public int getPrice() {
		switch(this.id) {
		case 1:
			return 5000;
		case 2:
			return 10000;
		default:
			return 0;
		}
	}
	
	public int getTax() {
		switch(this.id) {
		case 1:
			return 2;
		case 2:
			return 5;
		default:
			return 0;
		}
	}
}
