package com.corejava.arrays;

public class LargestAndSmallest {

	public static void main(String[] args) {
		int num[]= {1,2,3,4,5,6,7,8,9};
	
		 int largest=num[0];
		 int smallest=num[0];
		 
		 for(int i=1; i<num.length;i++) {
			 if(num[i]>largest) {
				 largest=num[i];
			 }
			 else if(num[i]<smallest) {
				 smallest=num[i];
				
			 }
			 
		 }
		 
			 System.out.println("largest number is"+largest);
			 System.out.println("smallest number is"+smallest);
		// TODO Auto-generated method stub

	}

}
