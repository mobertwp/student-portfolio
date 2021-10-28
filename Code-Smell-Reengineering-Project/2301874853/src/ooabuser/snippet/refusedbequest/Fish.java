package ooabuser.snippet.refusedbequest;

/*
 * smell	: Refused Bequest
 * reason	: terjadi karena developer ingin menggunakan method dari kelas lain melalui proses inheritance
 * 				1. terdapat hubungan inheritance walaupun subclass dan superclass sangat berbeda (primate -> fish)
 * 
 * solution	:	1. Replace Inheritance with Delegation (delegation with class Fish)
 */

public class Fish {
	public void berenang() {
		//operasi berenang
	}
	public void bernafasMelaluiInsang() {
		//operasi bernafas melalui insang
	}
}
