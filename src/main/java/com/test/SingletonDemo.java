package com.test;

public class SingletonDemo {
	public static void main(String[] args) {
		Singleton s = Singleton.getinstance();
		System.out.println(s.hashCode());
		Singleton s1 = Singleton.getinstance();
		System.out.println(s1.hashCode());
	}
}

class Singleton {
	private static Singleton instance = null;

	private Singleton() {
	}

	public static Singleton getinstance() {
		if (instance == null) {
			instance = new Singleton();
		}
		return instance;
	}
}