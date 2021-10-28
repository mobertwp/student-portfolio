package dispensable.snippet.deadcode;

/*
 * smell	: Dead Code
 * reason	: terdapat fragmen code yang tidak digunakan lagi atau tidak pernah digunakan
 * solution	: Delete Code (method isOld()) 
 * 
 */

public class ShowPersonDetail {

	static boolean isOld(int umur) { //perlu di delete
		if(umur > 50) return true;
		else return false;
	}
	
	static void printDetail(String name, String homeAddress, int umur) {
		System.out.println(name+" "+homeAddress+" "+umur);
	}
	
	public static void main(String[] args) {
		String name = "Bubu";
		String homeAddress = "Jl 203 Barat";
		int umur = 23;
		
		printDetail(name, homeAddress, umur);
	}

}
