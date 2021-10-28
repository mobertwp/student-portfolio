package bloater.solution.largeclass;

public abstract class Karyawan {
	private String nama = "";
	private String alamat = "";
	private int id = 0;
	
	public Karyawan(String nama, String alamat, int id) {
		super();
		this.nama = nama;
		this.alamat = alamat;
		this.id = id;
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
}
