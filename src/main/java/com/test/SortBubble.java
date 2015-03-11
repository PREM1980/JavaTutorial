package com.test;

import java.util.Arrays;

public class SortBubble {
	public static void main(String[] args) {
		//Binary Sort
		int[] arr = { 1, 2, 3, 4, 5, 6 };
		System.out.println(arr.length);
		for (int i = 0; i < arr.length; i++) {
			for (int j = 1; j <= arr.length; j++) {
				System.out.println("arr[j] = " + j);
				if (arr[j - 1] < arr[j]) {
					System.out.println("fail");
					int temp = arr[j];
					arr[j] = arr[j - 1];
					arr[j - 1] = temp;

				}
			}
			System.out.println("out");
		}
		System.out.println(Arrays.toString(arr));

	}
}
