package dispensable.snippet.dataclass;

/*
 * smell	: Data Class
 * reason	: 	1.sebuah class (class Employee) hanya memiliki fields dan atau method ambigu
 * 				2. suatu bagian dari client code lebih cocok dimasukkan ke dalam class
 * 
 * solution	: 	1. Encapsulate Field + Remove Setting method
 * 				2. Move Method
 * 
 */

public class Employee {
	public String name;
	public String address;
}
