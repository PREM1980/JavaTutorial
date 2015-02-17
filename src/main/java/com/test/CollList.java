package com.test;

//Lists - Sort/Reverse
//List can be sorted using Collections.sort(arraylist)

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class CollList {
	public static void main(String[] args) {
		// Sort a list
		ArrayList al = new ArrayList();
		al.add("cat");
		al.add("dog");
		al.add("horse");
		al.add("elephant");
		System.out.println(al);
		Collections.sort(al);

		// reverse a list
		ArrayList al1 = new ArrayList();
		al1.add("cat");
		al1.add("dog");
		al1.add("horse");
		al1.add("elephant");
		Collections.reverse(al1);
		System.out.println(al1);

		// Convert a list to array
		//
		ArrayList al2 = new ArrayList(); // new arraylist
		al2.add("cat"); // add items
		al2.add("dog");
		al2.add("horse");
		al2.add("elephant");
		String[] strarr = (String[]) al2.toArray(new String[al2.size()]); //Convert list to array using toArray
		//String[] strarr = (String[]) al2.toArray();
		System.out.println("String array = " + Arrays.toString(strarr));
		//Object obj = new String("Example");
		//System.out.println((Integer) obj);

	}
}
