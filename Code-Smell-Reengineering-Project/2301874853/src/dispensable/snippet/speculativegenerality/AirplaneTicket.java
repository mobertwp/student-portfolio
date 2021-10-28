package dispensable.snippet.speculativegenerality;

/*
 * smell	: Speculative Generality
 * reason	: 	1. terdapat method (isSeatClassPremium & isSeatNumberEqualAThousand)
 * 						yang tidak digunakan atau dapat digantikan dengan 1 line of code
 * 
 * solution	: 	1. Inline method (isSeatClassPremium & isSeatNumberEqualAThousand)
 * 
 */

public class AirplaneTicket {
	private String seatClass;
	private int seatNumber;
	
	public AirplaneTicket(String seatClass, int seatNumber) {
		super();
		this.seatClass = seatClass;
		this.seatNumber = seatNumber;
	}
	public String getSeatClass() {
		return seatClass;
	}
	public int getSeatNumber() {
		return seatNumber;
	}
	
	public boolean isSeatClassPremium(String seatClass) {
		return (seatClass == "Premium");
	}
	
	public boolean isSeatNumberEqualAThousand(int seatNumber) {
		return (seatNumber == 1000);
	}
}
