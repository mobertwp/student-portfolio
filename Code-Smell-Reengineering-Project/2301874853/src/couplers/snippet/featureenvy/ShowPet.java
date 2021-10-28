package couplers.snippet.featureenvy;

/*
 * smell	: Feature Envy
 * reason	: dapat terjadi saat setelah memindahkan data ke dalam sebuah class dan meninggalkan operasi terkait
 * 				1. Terdapat metode (printPetData) yang dipenuhi oleh metode dari sebuah class lain
 * 
 * solution	:	1. Move Method (method printPetData)
 */

public class ShowPet {

	static void printPetData(Pet pet) {
		System.out.println(pet.getName()+"\n"+
							pet.getAge()+" years old\n"+
							pet.getColor()+" color\n"+
							pet.getWeight() + " kg");
	}
	
	public static void main(String[] args) {
		Pet pet = new Pet("Nami",20,"Hitam",12);
		
		printPetData(pet);
	}

}
