package couplers.solution.inappropirateintimacy;

public class Person {
	private BankAccount bank;

	public Person(BankAccount bank) {
		super();
		this.bank = bank;
	}
	
	private BankAccount getBank() {  //Hide Delegate, access diubah menjadi private
		return bank;
	}
	
	public boolean payCash(int itemPrice) {  //method telah di move
		if(getBank().getNominal()>=itemPrice) {
			getBank().deductNominal(itemPrice);
			return true;
		}
		else return false;
	}
	
}
