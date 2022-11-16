package com.predicates;

import java.util.function.Predicate;

public class Demo {

	public static void main(String[] args) {
		Predicate<Integer> pr=i->(i>10);
		System.out.println(pr.test(20));
		System.out.println(pr.test(5));
		
		Predicate<String> pr1=s->(s.length()>4);
		System.out.println(pr1.test("Welcome"));
		System.out.println(pr1.test("XYZ"));
		
		
	}

}
