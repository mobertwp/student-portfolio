package dispensable.solution.deadcode;

public class ShowPersonDetail {
	
	//deleted dead code method isOld()
	
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
