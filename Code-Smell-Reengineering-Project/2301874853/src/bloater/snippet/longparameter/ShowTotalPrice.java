package bloater.snippet.longparameter;

public class ShowTotalPrice {

/*
 * smell	: Long Parameter
 * reason	: terdapat method call yang menggunakan parameter lebih dari 3
 * 				1. terdapat beberapa parameter yang bisa dipass melalui 1 objek
 * 				2. terdapat beberapa parameter yang bisa dipass melalui 1 method
 * 
 * solution	: 	1. Preserve Whole Object
 * 				2. Replace Parameter with Method Call
 */
	
	static void printTotalPrice(int price0, int price1, int tax, int discount) {
		int totalClean = price0+price1;
		double cost = totalClean*((double)(tax-discount)/100);
		System.out.println((double)(totalClean + cost));
	}
	
	public static void main(String[] args) {
		ShoppingBag bag = new ShoppingBag();
		int price0 = bag.getArrayPrice()[0];
		int price1 = bag.getArrayPrice()[1];
		int tax = 10;
		int discount = 20;
		
		printTotalPrice(price0, price1, tax, discount);
	}

}
