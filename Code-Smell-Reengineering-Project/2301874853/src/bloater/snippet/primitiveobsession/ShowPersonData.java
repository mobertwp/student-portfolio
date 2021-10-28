package bloater.snippet.primitiveobsession;

public class ShowPersonData {

/*
 * smell	: Primitive Obsession
 * reason	: menggunakan primitive ketika penggunaan sebuah objek kecil akan lebih baik
 * 				1. menggunakan kumpulan data field yang memiliki sifat unik sendiri
 * 				2. menggunakan field yang merepresentasikan tipe
 * 				3. menggunakan array yang dapat digantikan oleh objek
 * 
 * solution	: 	1. Replace Data Value with Object (name)
 * 				2. Replace Type Code with Class (married)
 * 				3. Replace Array with object (firstchild)
 * 
 */
	
	public static void main(String[] args) {
		String name = "Abu";
		String gender = "Laki-laki";
		int married = 1;
		String[] firstchild = new String[2];
		firstchild[0] = "Bubu";
		firstchild[1] = "Perempuan"; 
		
		System.out.println(name+"");
		if(married == 1) {
			System.out.println(firstchild[0]);
		}
	}

}
