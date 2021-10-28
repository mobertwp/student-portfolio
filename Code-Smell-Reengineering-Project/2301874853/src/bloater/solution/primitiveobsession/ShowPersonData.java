package bloater.solution.primitiveobsession;

public class ShowPersonData {
	
	public static void main(String[] args) {
		Person person = new Person("Abu","Laki-laki"); //replace data value with object
		Married family = new Married(); //replace type code with class
		Person firstchild = new Person("Bubu","Perempuan"); //replace array with object 
		family.addChild(firstchild);
		person.setFamily(family);
		
		System.out.println(person.getName()+"");
		if(person.getFamily()!=null) {
			System.out.println(person.getFamily().listChild.get(0).getName());
		}
	}

}
