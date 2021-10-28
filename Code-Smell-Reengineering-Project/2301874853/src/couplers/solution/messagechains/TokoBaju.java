package couplers.solution.messagechains;

public class TokoBaju {
	private DistributorBaju distributor = new DistributorBaju();
	
	private DistributorBaju getDistributor() { //Hide Delegate, access diubah menjadi private
		return distributor;
	}

	private String pesanKain() { //method telah diextract
		return getDistributor().getKain();
	}
}
