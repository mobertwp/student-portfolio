package bloater.snippet.longmethod;

public class HitungNilai {

/*
 * smell	: Long method
 * reason	: terjadi karena developer tidak rajin membuat method sederhana baru sehingga line of code menumpuk
 * 				1. terlalu banyak loc dalam 1 method (main) 
 * 				2. menggunakan nilai dari beberapa method dalam sebuah objek 
 * 				3. terdapat variable temp yang digunakan berulang kali walau hanya menampung sementara
 * 				4. terdapat conditional yang panjang
 * 
 * solution	: 	1. Extract Method (method main)
 * 				2. Preserved Whole Object (object nilai)
 * 				3. Replace Temp with Query (temp atasKKM dan nilaiAkhir)
 * 				4. Decompose Conditional (conditional jika nilai di atas KKM)
 */
	
	public static void main(String[] args) {
		DataNilai nilai = new DataNilai();
		
		boolean atasKKM = false;
		if(nilai.getNilaiA() >= 60 && nilai.getNilaiB() >= 60 && nilai.getNilaiC() >= 60) {
			atasKKM = true;
		}
		else {
			atasKKM = false;
		}
		
		int nilaiAkhir = 0;
		if(atasKKM == true) {
			nilaiAkhir = (nilai.getNilaiA()+nilai.getNilaiB()+nilai.getNilaiC())/3;
		}
		
		if(atasKKM == true)
			System.out.println("Nilai Akhir: " +nilaiAkhir);
		else {
			System.out.println("Terdapat nilai di bawah KKM");
		}
	}

}
