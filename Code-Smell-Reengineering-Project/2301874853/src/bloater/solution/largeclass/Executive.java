package bloater.solution.largeclass;

public class Executive extends Karyawan implements Stockholder{ //class executive menjadi hasil extract subclass

	public Executive(String nama, String alamat, int id) {
		super(nama, alamat, id);
	}
	
	public void hireKaryawan() {
		//hire karyawan
	}
	
	public void getStockholderInfo() {
		//get stockholder info
	}
}
