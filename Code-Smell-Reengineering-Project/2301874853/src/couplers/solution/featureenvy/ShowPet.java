package couplers.solution.featureenvy;

public class ShowPet {
	
	public static void main(String[] args) {
		Pet pet = new Pet("Nami",20,"Hitam",12);
		
		pet.printPetData(); //method berada dalam class Pet setelah di Move Method
	}

}
