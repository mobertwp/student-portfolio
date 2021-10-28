package ooabuser.snippet.switchstatements;

/*
 * smell	: Complex switch statement
 * reason	: 	1. terdapat method yang dibagi menjadi bagian-bagian bergantung pada parameternya (method getData())
 * 				2. terdapat juga penggunaan switch yang complex (method getOrigin()) 
 * 						dimana aksi dilakukan berdasarkan tipe origin
 * 
 * solution	: 	1. Replace parameter with Explicit Method (method getData())
 * 				2. Replace Conditional with polymorphism (method getOrigin())
 * 
 */

public class Dog {
	String type="";
	String color;
	String gender;
	
	public Dog(String type, String color, String gender) {
		super();
		this.type = type;
		this.color = color;
		this.gender = gender;
	}
	
	public String getData(String data) { //perlu dibedah
		if(data.equals("type")) {
			return this.type;
		}
		if(data.equals("color")) {
			return this.color;
		}
		if(data.equals("gender")) {
			return this.gender;
		}
		return "No Data";
	}
	
	public String getOrigin() { //perlu diubah sebagai polymorphism
		switch(this.type) {
		case "German Shepherd":
			return "Germany";
		case "Labrador":
			return "Newfoundland";
		default:
			return "None";
		}
	}
}
