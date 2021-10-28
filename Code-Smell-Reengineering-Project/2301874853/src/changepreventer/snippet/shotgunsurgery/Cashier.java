package changepreventer.snippet.shotgunsurgery;

/* smell	: Shotgun Surgery
 * reason	: terjadi karna tidak menyadari common behavior yang dimiliki kelas-kelas berbeda
 * 				1. terdapat perilaku atau aktivitas yang sama yang dilakukan oleh sejumlah kelas
 * 
 * solution	: 	1a. Move method
 * 				1b. Move field
 */

public class Cashier extends Employee {
	int workHour;
	
	public Cashier(String name, String address, int id) {
		super(name, address, id);
	}

	public int getWorkHour() {
		return workHour;
	}

	public void setWorkHour(int workHour) {
		this.workHour = workHour;
	}

	public int getBonus(){
		if(workHour > 45) {
			return 700000;
		}else if(workHour > 36) {
			return 400000;
		}else
			return 0;
	}
}
