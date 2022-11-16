package com.corejava.arrays;

import java.util.Scanner;

public class SpecialCharacters {
	
	 
private static String para_msg ="Enter the paragraph";
	
	public static int findSpecialChars(String str) {
		
		int count = 0;
		for(int i=0;i<str.length();i++) {
			if(!Character.isDigit(str.charAt(i))
			    && !Character.isLetter(str.charAt(i))
				&& !Character.isWhitespace(str.charAt(i))) 
			{
				
				System.out.print(str.charAt(i));
				count++;
			}			
		}
		System.out.println("");
		return count;
	}

	public static void main(String[] args) {
		
		System.out.println(para_msg);
		Scanner sc = new Scanner(System.in);
		String para = sc.nextLine();
		int count = findSpecialChars(para);
		
		if(count == 0) {
			System.out.println("No special characters are found");
		} else {
			System.out.println("String has special characters\n"+count+"special characters found");
		}

	}

}

