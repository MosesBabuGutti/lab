package com.corejava.arrays;

import java.util.Arrays;

public class BubbleSort {

	public static void main(String[] args) {
		int a[]= {4,2,3,5,1};
		int n=a.length;
		for (int i=0;i<n-1;i++) {
			for(int j=1;j<n-1;j++) {
				if(a[j]>a[j+1]) {
					int temp=a[j];
					a[j]=a[j+1];
					a[j+1]=temp;
				}
			}
		}
		System.out.println("After sorting the numbers"+Arrays.toString(a));

	}

}
