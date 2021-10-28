package bloater.snippet.largeclass;

/*
 * smell	: Large Class
 * reason	: terjadi karena developer tidak rajin membuat sebuah class baru
 * 				1. class memiliki terlalu banyak fields/methods/line of code yang tidak karakteristik
 * 				2. class memiliki karakteristik dari class lainnya
 * 				3. method yang digunakan termasuk karakteristik dari suatu class interface
 * 
 * solution	: 	1. Extract Class (class Karyawan)
 * 				2.Extract subclass (class Executive)
 * 				3. Extract interface (class Stockholder)
 */

public class Karyawan {
	private String nama = "";
	private String alamat = "";
	private int id = 0;
	private boolean executive = false;
	private boolean stockholder = false;
	
	public Karyawan(String nama, String alamat, int id, boolean executive, boolean stockholder) {
		super();
		this.nama = nama;
		this.alamat = alamat;
		this.id = id;
		this.executive = executive;
		this.stockholder = stockholder;
	}
	
	public String getNama() {
		return nama;
	}

	public String getAlamat() {
		return alamat;
	}

	public int getId() {
		return id;
	}

	public boolean isExecutive() {
		return executive;
	}

	public boolean isStockholder() {
		return stockholder;
	}
	

	public void hireKaryawan() {
		if(this.executive==true) {
			//hire karyawan
		}
	}
	
	public void getStockholderInfo() {
		if(this.stockholder==true) {
			//get stockholder info
		}
	}
}
