package changepreventer.snippet.parallelinheritance;

/*
 * smell	: Parallel Inheritance Hierarchies
 * reason	: kesalahan developer tidak merencanakan design pattern yang baik
 * 				1. ceroboh membuat class inheritance baru
 * 
 * solution	: 	1. Move Method (method getWage)
 */

public class CashierWage extends Wage{

	@Override
	int getWage() {
		return 4750000;
	}

}
