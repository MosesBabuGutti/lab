package training.com;

public class Prime {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int num=15, count=0;
		for(int i=1; i<=num;i++)
		{
			if(num%i==0)
			count++;
		}
		if(count==2)
	
	 System.out.println("its primet");
		 else
		 {
			 System.out.println("its notprime");
		 } 
	 }
	}

