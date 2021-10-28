package couplers.snippet.inappropirateintimacy;

/*
 * smell	: Inappropirate Intimacy
 * reason	: 	1. terdapat class yang mengetahui terlalu banyak hal mengenai class lainnya
 * 
 * solution	:	1a. Extract Method (method candySold())
 * 				1b. Hide Delegate (hasil: method payCash())
 * 
 */

public class Shop {
	private int earning = 0;
	
	public void candySold(Person person) { 
		int candyPrice = 2000;
		if(person.getBank().getNominal()>=candyPrice) { //intimacy terlalu dalam
			person.getBank().deductNominal(candyPrice); //perlu di move ke dalam class person
		}
		earning+=candyPrice;
	}
}
