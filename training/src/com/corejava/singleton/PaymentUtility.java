package com.corejava.singleton;



public class PaymentUtility {
	
	private static PaymentUtility paymentUtility = null;
	private PaymentUtility() {
		
	}
	public static PaymentUtility getInstance() {
		if(paymentUtility == null) {
			paymentUtility = new PaymentUtility();
		}
		return paymentUtility;
	}
	
	public void doUpiPayment(String upiId, float amount) {
		double balance = 54000;
		if(amount<balance) {
			System.out.println("Payment Successful");
		}else {
			System.out.println("Balance is low");
		}
	}
	public void doCreditCardPayment(String cardnumber, String cvv, float amount) {
		float bill = 28700;
		if(amount == bill) {
			System.out.println("Paid total bill");
		}else if(amount < bill) {
			System.out.print("Paid some amount and due amount is:");
			System.out.println(bill - amount);
		}
	}
	public static void main(String[] args) {
		PaymentUtility p1 = PaymentUtility.getInstance();
		PaymentUtility p2 = PaymentUtility.getInstance();
		p1.doUpiPayment("9182636391@paytm",2500);
		p1.doCreditCardPayment("124125146523","142",12450);
		p2.doUpiPayment("8142137581@paytm", 14000);
		p2.doCreditCardPayment("147847854562","014", 14785);
	}

}
