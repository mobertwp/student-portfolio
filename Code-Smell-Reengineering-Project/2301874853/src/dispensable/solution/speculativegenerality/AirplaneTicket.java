package dispensable.solution.speculativegenerality;

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
	
	//method dapat ditulis di client code sbg (seatClass == "Premium) dan (seatNumber == 1000)
}
