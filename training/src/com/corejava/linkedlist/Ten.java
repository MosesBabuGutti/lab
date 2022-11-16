package com.corejava.linkedlist;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.Scanner;

public class Ten {
	public void list(String y[],int n)
	{
		List<String> l =Arrays.asList(y);
		LinkedList<String>link=new LinkedList<String>(l);
		System.out.println("Linkedlist of above array"+link);
		System.out.println("The first element of the Linked List is: " +link.getFirst());
		System.out.println("The last element of the Linked List is: " +link.getLast());
		link.remove(n-1);
		System.out.println("The List is after removing :"+link);
		link.add(4,"newhouse");
		System.out.println("The List is after adding :"+link);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc=new Scanner(System.in);
		System.out.println("enter no house");
		
		int nohouse=sc.nextInt();
		String arrhouse[]=new String[nohouse];
		for(int i=0;i<nohouse;i++)
		{
			arrhouse[i]=sc.next();
		}
sc.close();
		for(String s: arrhouse)
		{
			System.out.println(s);
		}
		Ten x=new Ten();
		x.list(arrhouse,nohouse);
	}

}
