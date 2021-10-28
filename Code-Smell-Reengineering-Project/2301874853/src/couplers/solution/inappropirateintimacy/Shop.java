package couplers.solution.inappropirateintimacy;

public class Shop {
	private int earning = 0;
	
	public void candySold(Person person) {
		int candyPrice = 2000;
		boolean payed = person.payCash(candyPrice); //data telah di hide
		if(payed) earning+=candyPrice;
	}
}
