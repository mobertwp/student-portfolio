package changepreventer.snippet.parallelinheritance;

/*
 * smell	: Parallel Inheritance Hierarchies
 * reason	: kesalahan developer tidak merencanakan design pattern yang baik
 * 				1. ceroboh membuat class inheritance baru
 * 
 * solution	: 	1. Move Method (method getWage)
 */

public class WaiterWage extends Wage {

	@Override
	int getWage() {
		return 5000000;
	}

}
