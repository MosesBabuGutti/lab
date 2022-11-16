package training.com;

public class LeftAligned {

	public static void main(String[] args) {
		int i,j,numberOfRows=6;
		System.out.println("The Left aligned star pattern is ");
		for(i=0;i<numberOfRows;i++)
		{
			for(j=0;j<=i;j++)
			{
				System.out.print("*");
			}
			System.out.println();
		}

	}

}
