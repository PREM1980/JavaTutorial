package com.test;

import java.util.ArrayList;
import java.util.Collections;

public class CollObject {
	public static void main(String[] args){
		ArrayList al = new ArrayList();
		al.add(new Employee("Prem","Anand",40));
		al.add(new Employee("Dev","Anand",39));
		Collections.sort(al,new ageComparator());
		System.out.println(al.toString());
	}
}

