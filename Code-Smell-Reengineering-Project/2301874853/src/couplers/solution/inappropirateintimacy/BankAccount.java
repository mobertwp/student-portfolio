package couplers.solution.inappropirateintimacy;

public class BankAccount {
	private int id;
	private int password;
	private int nominal;
	
	public BankAccount(int id, int password, int nominal) {
		super();
		this.id = id;
		this.password = password;
		this.nominal = nominal;
	}
	public int getId() {
		return id;
	}
	public int getPassword() {
		return password;
	}
	public int getNominal() {
		return nominal;
	}
	
	public void deductNominal(int deduction) {
		this.nominal = this.nominal-deduction;
	}
}
