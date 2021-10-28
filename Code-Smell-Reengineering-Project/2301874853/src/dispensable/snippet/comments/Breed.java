package dispensable.snippet.comments;

public class Breed {
	private int nilaiAgresif = 0;
	private int nilaiKesehatan = 0;
	private String warna = ""; 
	private boolean belang = false;
	private String warnaBelang = "";
	
	public Breed(int nilaiAgresif, int nilaiKesehatan, String warna, boolean belang, String warnaBelang) {
		super();
		this.nilaiAgresif = nilaiAgresif;
		this.nilaiKesehatan = nilaiKesehatan;
		this.warna = warna;
		this.belang = belang;
		this.warnaBelang = warnaBelang;
	}

	public int getNilaiAgresif() {
		return nilaiAgresif;
	}

	public int getNilaiKesehatan() {
		return nilaiKesehatan;
	}

	public String getWarna() {
		return warna;
	}

	public boolean isBelang() {
		return belang;
	}

	public String getWarnaBelang() {
		return warnaBelang;
	}
	
}
