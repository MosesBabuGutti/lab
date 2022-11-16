package com.corejava.collections;

import java.util.ArrayList;
import java.util.List;

public class Cust_Arraylist {
	public record custlist() {

	}

	List<Customer> list1=new ArrayList<>();
	
	public static void main(String[] args) {
		new Cust_Arraylist.custlist();
	}

}
