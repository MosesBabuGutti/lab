package training.com;

public class Fibonacci {

	public static void main(String[] args) {
		
	int n = 10, firsttearm=0, secondtearm=1;
	System.out.println("Fibonacci series till "+ n +" tearms");
	for(int i=1;i<=n;i++) {
		System.out.print(firsttearm + ", ");
		int nexttearm = firsttearm + secondtearm;
		firsttearm = secondtearm;
		secondtearm = nexttearm;
	}
	}

}
