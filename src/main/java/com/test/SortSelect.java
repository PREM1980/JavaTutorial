package com.test;

import java.util.Arrays;

public class SortSelect {
	public static void main(String a[]) {

		int[] arr1 = { 10, 34, 2, 56, 7, 67, 88, 42 };
		int[] arr2 = doSelectionSort(arr1);
		for (int i : arr2) {
			System.out.print(i);
		}
	}

	public static int[] doSelectionSort(int[] arr) {
		for (int i = 0; i < arr.length - 1; i++) {
			int index = i;
			for (int j = i + 1; j < arr.length; j++) {
				System.out.println("j = " + j);
				System.out.println("index = " + index);
				System.out.println("arr[j] = " + arr[j]);
				System.out.println("arr[index] = " + arr[index]);
				if (arr[j] < arr[index]) {
					index = j;
					System.out.println("Got it = " + arr[index]);
				}
			}
			System.out.println("Prem");
			int smallerNumber = arr[index];
			arr[index] = arr[i];
			arr[i] = smallerNumber;
		}
		return arr;
	}

}
