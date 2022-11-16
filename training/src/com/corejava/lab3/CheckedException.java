package com.corejava.lab3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class CheckedException {
	
	public static void main(String[] args) {

		int a,b = 0,c=0;
		a=10;
		
		
		BufferedReader br =new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Enter");
		
		try {
			b=Integer.parseInt(br.readLine());
			c=a/b;
		} catch (NumberFormatException e) {
			
			System.out.println("Error Number");
		} catch (IOException e) {
			
			System.out.println("IO Exception");
		}
		
		System.out.println("Output is "+c);
	}

}
