package com.test;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

//http://stackoverflow.com/questions/3590677/how-to-union-intersect-difference-and-reverse-data-in-java
	
public class CollSet {
	public static void main(String[] args) {
		// HashSet
		HashSet hs1 = new HashSet();
		hs1.add("Cat");
		hs1.add("Dog");
		hs1.add("Cat");

		for (Object s : hs1) {
			System.out.println(s);
		}
		// TreeSet
		TreeSet hs2 = new TreeSet();
		hs2.add("Cat");
		hs2.add("Lion");
		hs2.add("Tiger");
		System.out.println("******TreeSet******");
		for (Object s : hs2) {
			System.out.println(s);
		}

		// Union
		Set hs4 = new HashSet(hs1);
		hs4.addAll(hs2);
		System.out.println("******Union******");
		for (Object s : hs4) {
			System.out.println(s);
		}

		// Intersection
		Set hs5 = new HashSet(hs1);
		hs5.retainAll(hs2);
		System.out.println("******Intersection******");
		for (Object s : hs5) {
			System.out.println(s);
		}

		// al
		ArrayList al = new ArrayList();
		al.add("Cat");
		al.add("Dog");
		al.add("Elephant");
		System.out.println("******ArrayList******");
		for (Object s : al) {
			System.out.println(s);
		}

		// Convert list to set
		Set<String> hs3 = new HashSet<String>(al);
		System.out.println("******ArrayList to Set******");
		for (Object s : al) {
			System.out.println(s);
		}

	}
}
