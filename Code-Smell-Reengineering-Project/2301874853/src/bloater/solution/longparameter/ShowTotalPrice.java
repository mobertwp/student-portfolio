package bloater.solution.longparameter;

public class ShowTotalPrice {

	static double getCostPercent(int tax, int discount) {
		return (double)(tax-discount)/100;
	}
	
	static void printTotalPrice(ShoppingBag bag, double costPercent) {
		int totalClean = bag.getArrayPrice()[0]+bag.getArrayPrice()[1];
		double cost = totalClean*costPercent;
		System.out.println((double)(totalClean + cost));
	}
	
	public static void main(String[] args) {
		ShoppingBag bag = new ShoppingBag();
		int tax = 10;
		int discount = 20;
		printTotalPrice(bag, getCostPercent(tax,discount));//Preserve whole object, Replace parameter with method call
	}

}
