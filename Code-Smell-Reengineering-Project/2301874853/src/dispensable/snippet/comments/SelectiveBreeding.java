package dispensable.snippet.comments;

public class SelectiveBreeding {

/*
 * smell	: Dispensable Comment
 * reason	: terjadi karena developer tidak melakukan refactoring sehingga ditambal dengan komen
 * 				1. code berisi baris-baris komen penjelasan yang tidak diperlukan atau menutupi smell code
 * 
 * solution	: 	1a. Extract Method + proper naming (hasil extract: method isDogBreedForMario)
 * 				1b. Extract Variable
 */
	
	public static void main(String[] args) {
		Breed calon = new Breed(20,99,"hitam",true,"putih");
		boolean acceptance = false;
		/*
		 * berikut adalah selection untuk breed anjing yang diinginkan mario
		 */
		if(calon.getNilaiAgresif() <= 30) { //jika tidak agresif
			if(calon.getNilaiKesehatan() >= 95) { //jika sangat sehat
				if(calon.getWarna() == "hitam" || calon.getWarna() == "coklat") { //jika berwarna gelap
					if(calon.isBelang() == true && calon.getWarnaBelang() == "putih") { //jika memiliki belang putih
						acceptance = true;
					}
				}
			}
		}
	}

}
