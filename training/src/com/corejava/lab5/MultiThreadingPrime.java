package com.corejava.lab5;

import java.util.Scanner;

public class MultiThreadingPrime implements Runnable {
	private int[] arr;

	public MultiThreadingPrime(int[] arr) {
		this.arr = arr;
	}

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the Length: ");
		int length = sc.nextInt();
		System.out.println("Enter the Elements in Array: ");
		int[] myarr = new int[length];
		for (int i = 0; i < length; i++) {
			myarr[i] = sc.nextInt();
		}
		MultiThreadingPrime ref = new MultiThreadingPrime(myarr);
		Thread2 t2 = new Thread2(myarr);
		t2.start();
		Thread t1 = new Thread(ref);
		t1.start();

	}

	@Override
	public void run() {
		int count = 0;
		System.out.println("Printing Non Prime Numbers From an Array: ");

		for (int i = 0; i < arr.length; i++) {

			int Element = arr[i];
			int temp = Element / 2;
			for (int j = 2; j <= temp; j++) {
				if (Element % j == 0) {
					count++;
					break;
				}
			}
			if (count != 0) {
				System.out.println(Element);
			}
		}

	}
}

class Thread2 extends Thread {
	private int[] arr;
	boolean isPrime = true;

	public Thread2(int[] number) {
		this.arr = number;
	}

	@Override
	public void run() {

		int count = 0;
		System.out.println("Thread1 Printing Prime Numbers From An Array: ");

		for (int i = 0; i < arr.length; i++) {

			int Element = arr[i];
			int temp = Element / 2;
			if (Element == 0 || Element == 1) {
				System.out.println("0 or 1 is Not a Prime Number");
			} else {
				for (int j = 2; j <= temp; j++) {
					if (Element % j == 0) {
						count++;
						break;
					}
				}
				if (count == 0) {
					System.out.println(Element);
				}
			}

		}

	}
}
