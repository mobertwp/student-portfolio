package couplers.snippet.inappropirateintimacy;

/*
 * smell	: Inappropirate Intimacy
 * reason	: 	1. terdapat class yang mengetahui terlalu banyak hal mengenai class lainnya
 * 
 * solution	:	1a. Extract Method (method candySold())
 * 				1b. Hide Delegate (hasil: method payCash())
 * 
 */

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
