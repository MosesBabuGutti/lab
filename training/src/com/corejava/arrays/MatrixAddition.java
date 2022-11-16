package com.corejava.arrays;

import java.util.Scanner;

public class MatrixAddition {

	public static void main(String[] args) {
		int r,c;
		Scanner s=new Scanner(System.in);
		System.out.println("Enter the no. of rows");
		r=s.nextInt();
		System.out.println("Enter the no. of columns");
		c=s.nextInt();
		int A[][]=new int[r][c];
		int B[][]=new int[r][c];
		int C[][]=new int[r][c];
		System.out.println("Enter elements for Matrix A");
		for(int i=0;i<r;i++) {
			for(int j=0;j<c;j++) {
				A[i][j]=s.nextInt();
			}
		}
		System.out.println("Enter elements for Matrix B");
		for(int i=0;i<r;i++) {
			for(int j=0;j<c;j++) {
				B[i][j]=s.nextInt();
			}
		}
			
		System.out.println("The sum of A and B is");
		for(int i=0;i<r;i++) {
			for(int j=0;j<c;j++) {
				C[i][j]=A[i][j]+B[i][j];
				
			}
		}
		for(int i=0;i<r;i++) {
			for(int j=0;j<c;j++) 
			{
				System.out.print(C[i][j]+"\t");
				
			}
			System.out.print("\n");
		}

	}

}
