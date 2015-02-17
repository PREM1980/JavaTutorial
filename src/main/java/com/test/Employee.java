package com.test;

import java.util.Comparator;

public class Employee {
	String fname;
	String lname;

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public Integer getAge() {
		return age;
	}

	@Override
	public String toString() {
		return "Employee [fname=" + fname + ", lname=" + lname + ", age=" + age
				+ "]";
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	Integer age;

	Employee(String fname, String lname, Integer age) {
		this.fname = fname;
		this.lname = lname;
		this.age = age;
	}
}

class ageComparator implements Comparator<Employee> {

	public int compare(Employee o1, Employee o2) {
		Integer age1 = o1.getAge();
		Integer age2 = o2.getAge();
		if (age1 > age2) {
			return 1;
		} else if (age1 < age2) {
			return -1;
		} else {
			return 0;
		}
	}

}
