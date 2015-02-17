package com.test;

import java.util.Arrays;
import java.util.Collections;

import org.apache.commons.lang.ArrayUtils;
//Arrays - Sort
//Array can be sorted using Arrays.sort(arrayname) or collections.sort(arraylist)
//Arrays can be reversed using Collections.sort(arraylist) or Arraylist.reverse(arr1) or manually
public class CollArray {
	public static void main(String[] args) {
		//Sorting a array - Method 1
		String[] arr2 = { "Horse", "Dog", "Cat","Elephant" }; //Declare a array
		
		Collections.sort(Arrays.asList(arr2));
		
		System.out.println("Sorted array = " + Arrays.toString(arr2)); // Print the results
		
		// Sorting a array - Method 2
		String[] arr1 = { "Horse", "Dog", "Cat","Elephant" }; //Declare a array
		
		Arrays.sort(arr1); //Sort a array
		System.out.println("Sorted array = " + Arrays.toString(arr1)); // Print the results
		
		//Reversing a array - Method 1
		
		String[] arr3 = { "Cat","Dog", "Elephant","Horse" }; // Declare a array
		 
		ArrayUtils.reverse(arr3); //Using Array Utils - org.apache.commons.lang.ArrayUtils
		System.out.println(Arrays.toString(arr3)); // print a array
				
		//Reversing a array - Method 2 
		String[] arr4 = { "Cat","Dog", "Elephant","Horse" }; // Declare a array
		Collections.reverse(Arrays.asList(arr4)); // Collections.reverse
		System.out.println(Arrays.toString(arr4)); // print a array

		
		
		String[] arr5 = { "Cat","Dog", "Elephant","Horse" };
		int left = 0;
		
		int right = arr5.length - 1;
		
		while (left < right){
			String temp = arr5[left];
			arr5[left] = arr5[right];
			arr5[right] = temp;
			++left;
			--right;
			
		}
		System.out.println(Arrays.toString(arr5));
		
		

	}
}
