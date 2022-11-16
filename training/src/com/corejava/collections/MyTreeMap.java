package com.corejava.collections;

import java.util.TreeMap;

public class MyTreeMap {
	
	public void sorderList() {
		TreeMap<Customer,Integer> mySortedMap = new TreeMap<>(new SortCustomerByFirst_Name());
		mySortedMap.put(new Customer(1, "Vishwas","kumar","vishwas.kumar@gmail.com","01-06-1993","M"),1);
		mySortedMap.put(new Customer(2, "Vikas","kumar","vikas.kumar@gmail.com","02-05-1996","M"),2);
		mySortedMap.put(new Customer(3, "Madhu","kumari","Madhu.kumari@gmail.com","03-04-1995","F"),3);
		mySortedMap.put(new Customer(4, "Deepthi","Reddy","Pavan.kumar@gmail.com","04-03-1990","F"),4);
		mySortedMap.put(new Customer(5, "Arun","kumar","Arun.kumar@gmail.com","05-02-1989","M"),5);
		
		System.out.println("Sorted order of customer by firstname is as follows:\n"+mySortedMap);
	}

	public static void main(String[] args) {
		new MyTreeMap().sorderList();
	}
}
