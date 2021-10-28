package bloater.solution.longmethod;

public class HitungNilai {
	
	static boolean atasKKM(DataNilai nilai) { //temp replaced with query, preserved whole object
		if(nilai.getNilaiA() >= 60 && nilai.getNilaiB() >= 60 && nilai.getNilaiC() >= 60)
			return true;
		else
			return false;
	}
	
	static double hitungNilaiAkhir(DataNilai nilai) { //preserved whole object
		return (nilai.getNilaiA()+nilai.getNilaiB()+nilai.getNilaiC())/3;
	}
	
	public static void main(String[] args) {
		DataNilai nilai = new DataNilai();
		
		if(atasKKM(nilai)) //complex conditional decomposed
			System.out.println("Nilai Akhir: " + hitungNilaiAkhir(nilai));
		else
			System.out.println("Terdapat nilai di bawah KKM");
	}

}
