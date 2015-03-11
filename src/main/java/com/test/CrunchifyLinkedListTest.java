package com.test;

public class CrunchifyLinkedListTest {
	public static void main(String[] args) {
		CrunchifyLinkedList lList = new CrunchifyLinkedList();

		// add elements to LinkedList
		lList.add("1");
		lList.add("2");
		lList.add("3");
		//lList.add("4");
		//lList.add("5");

		/*
		 * Please note that primitive values can not be added into LinkedList
		 * directly. They must be converted to their corresponding wrapper
		 * class.
		 */

		System.out.println("lList - print linkedlist: " + lList);
		//System.out.println("lList.size() - print linkedlist size: "
		//		+ lList.size());
		//System.out.println("lList.get(3) - get 3rd element: " + lList.get(3));
		//System.out.println("lList.remove(2) - remove 2nd element: "
		//		+ lList.remove(2));
		//System.out.println("lList.get(3) - get 3rd element: " + lList.get(3));
		//System.out.println("lList.size() - print linkedlist size: "
		//		+ lList.size());
		//System.out.println("lList - print linkedlist: " + lList);
	}

}

class CrunchifyLinkedList {
	// reference to the head node.
	private Node head;
	private int listCount;

	// LinkedList constructor
	public CrunchifyLinkedList() {
		// this is an empty list, so the reference to the head node
		// is set to a new node with no data
		head = new Node(null);
		listCount = 0;
	}

	public void add(Object data)
	// appends the specified element to the end of this list.
	{
		Node Temp = new Node(data);
		Node Current = head;
		// starting at the head node, crawl to the end of the list
		
		while (Current.getNext() != null) {
			System.out.println("Prem");
			Current = Current.getNext();
		}
		System.out.println("add =  " + head );
		// the last node's "next" reference set to our new node
		Current.setNext(Temp);
		listCount++;// increment the number of elements variable
	}
}

class Node {
	// reference to the next node in the chain,
	// or null if there isn't one.
	Node next;
	// data carried by this node.
	// could be of any type you need.
	Object data;

	// Node constructor
	public Node(Object dataValue) {
		next = null;
		data = dataValue;
	}

	// another Node constructor if we want to
	// specify the node to point to.
	public Node(Object dataValue, Node nextValue) {
		next = nextValue;
		data = dataValue;
	}

	// these methods should be self-explanatory
	public Object getData() {
		return data;
	}

	public void setData(Object dataValue) {
		data = dataValue;
	}

	public Node getNext() {
		return next;
	}

	public void setNext(Node nextValue) {
		next = nextValue;
	}
}