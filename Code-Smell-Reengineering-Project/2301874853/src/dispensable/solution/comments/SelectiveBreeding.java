package dispensable.solution.comments;

public class SelectiveBreeding {
	
	static boolean isDogBreedForMario(Breed calon) { //extract method
		boolean isNotAgresif = calon.getNilaiAgresif() <= 30; //extract variable
		boolean isVeryHealthy = calon.getNilaiKesehatan() >= 95; //extract variable
		boolean isDarkColour = (calon.getWarna() == "hitam" || calon.getWarna() == "coklat"); //extract variable
		boolean isBelangPutih = (calon.isBelang() == true && calon.getWarnaBelang() == "putih"); //extract variable
		
		if(isNotAgresif && isVeryHealthy && isDarkColour && isBelangPutih) {
			return true;
		}else
			return false;
	}

	public static void main(String[] args) {
		Breed calon = new Breed(20,99,"hitam",true,"putih");
		boolean acceptance = false;
		acceptance = isDogBreedForMario(calon);
		
	}

}
