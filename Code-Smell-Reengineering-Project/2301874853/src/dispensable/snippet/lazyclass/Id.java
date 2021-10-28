package dispensable.snippet.lazyclass;

/*
 * smell	: Lazy Class
 * reason	: 	1. sebuah class tidak melakukan banyak hal 
 * 						dan atau tidak ada future development yang dilakukan ke class tersebut
 * 
 * solution	: 	1. Inline Class (class id)
 */

public class Id {
	private int id;

	public Id(int id) {
		super();
		this.id = id;
	}

	public int getId() {
		return id;
	}
	
}
