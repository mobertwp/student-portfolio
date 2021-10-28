package changepreventer.snippet.shotgunsurgery;

/* smell	: Shotgun Surgery
 * reason	: terjadi karna tidak menyadari common behavior yang dimiliki kelas-kelas berbeda
 * 				1. terdapat perilaku atau aktivitas yang sama yang dilakukan oleh sejumlah kelas
 * 
 * solution	: 	1a. Move method
 * 				1b. Move field
 */

public abstract class Employee {
	private String name;
	private String address;
	private int id;
	
	public Employee(String name, String address, int id) {
		super();
		this.name = name;
		this.address = address;
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public int getId() {
		return id;
	}
	
}
