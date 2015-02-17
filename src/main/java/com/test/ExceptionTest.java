package com.test;

public class ExceptionTest {
	public static void main(String[] args) {

		// Object obj = new String("Example"); // Converting a String to Object

		// System.out.println((Integer) obj); // Converting a Object to Integer

		Parent p = new Parent(); // Parent Object
		Child c = new Child(); // Child Object
		p = c; // Parent can inherit a child
		//c = p; // Compile error:- Child cannot access everything of Parent

	}
}

class Parent {
}

class Child extends Parent {
}