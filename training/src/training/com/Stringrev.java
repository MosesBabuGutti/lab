package training.com;

public class Stringrev {
	public static void main(String[] args)
	{
		String name="Welcome";
		char[] ch1=name.toCharArray();
		for(int i=ch1.length-1;i>=0;i--) {
			System.out.print(ch1[i]);
		}
	}

}
