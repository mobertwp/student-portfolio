package couplers.snippet.inappropirateintimacy;

/*
 * smell	: Inappropirate Intimacy
 * reason	: 	1. terdapat class yang mengetahui terlalu banyak hal mengenai class lainnya
 * 
 * solution	:	1a. Extract Method (method candySold())
 * 				1b. Hide Delegate (hasil: method payCash())
 * 
 */

public class Person {
	private BankAccount bank;

	public Person(BankAccount bank) {
		super();
		this.bank = bank;
	}
	public BankAccount getBank() { //perlu di hide
		return bank;
	}
	
}
