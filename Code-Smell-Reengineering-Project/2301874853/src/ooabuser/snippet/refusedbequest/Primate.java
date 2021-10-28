package ooabuser.snippet.refusedbequest;

/*
 * smell	: Refused Bequest
 * reason	: terjadi karena developer ingin menggunakan method dari kelas lain melalui proses inheritance
 * 				1. terdapat hubungan inheritance walaupun subclass dan superclass sangat berbeda (primate -> fish)
 * 
 * solution	:	1. Replace Inheritance with Delegation (delegation with class Fish)
 */

public class Primate extends Fish{
	public void berjalan() {
		//operasi berjalan
	}
	public void berlari() {
		//operasi berlari
	}
	@Override
	public void berenang() {
		//operasi berenang
	}
	@Override
	public void bernafasMelaluiInsang() {
		//operasi yang tidak dimiliki oleh primate tetapi hasil dari inheritance
	}
	
}
