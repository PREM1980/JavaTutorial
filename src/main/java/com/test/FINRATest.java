package com.test;

import java.util.ArrayList;

import org.apache.commons.collections.IteratorUtils;
import org.apache.commons.lang.ArrayUtils;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeSet;

public class FINRATest {
	public static void main(String[] args) {
		String s1 = "{{ (( 4 + 5 )) }}";
		System.out.println("Length of string = " + s1.length());
		String[] s2 = s1.split(""); //Split the string into array
		ArrayList al = new ArrayList(Arrays.asList(s2)); //Convert the array into list
		al.remove(0); //remove the first occurence
		ArrayList hs = new ArrayList(al.subList(1, 8)); //Create a hashset with only first 8 elements
		
		System.out.println("al list =  " + al);
		System.out.println("length of the list= " + al.size());
		System.out.println("al list subset =  " + hs);
		System.out.println("length of the al subset= " + hs.size());

		List l1 = new ArrayList();
		l1.add(1);
		l1.add(2);
		l1.add(3);
		Iterator itr1 = l1.iterator();

		List l2 = new ArrayList();
		l2.add(4);
		l2.add(5);
		Iterator itr2 = l2.iterator();

		List l3 = new ArrayList();
		l3.add(6);

		Iterator itr3 = l3.iterator();

		List itr1list = IteratorUtils.toList(itr1);
		List itr2list = IteratorUtils.toList(itr2);
		List itr3list = IteratorUtils.toList(itr3);
		Object[] itr1arr = IteratorUtils.toArray(itr1);
		Object[] itr2arr = IteratorUtils.toArray(itr2);
		Object[] itr3arr = IteratorUtils.toArray(itr3);

		List<List> l4 = new ArrayList<List>();
		l4.add(itr1list);
		l4.add(itr2list);
		l4.add(itr3list);
		l4.get(0).size();
		List res = new ArrayList();
		for (int i = 0; i < l4.get(0).size(); i++) {
			for (int j = 0; j < l4.get(0).size(); j++) {
				try {
					res.add(l4.get(j).get(i));
				} catch (IndexOutOfBoundsException e) {
					System.out.println("Error");
				}

			}
		}

		System.out.println(res);

		// for (Object res:ArrayUtils.add(itr1arr,itr2arr)){
		// for (int i:res)
		// System.out.println(i);
		// }
	}
}