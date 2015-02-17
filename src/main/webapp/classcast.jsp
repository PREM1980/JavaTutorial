<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/plugins/jquery.snippet.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link
	href="<c:url value="/resources/css/plugins/social-likes_birman.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/test.js" />"></script>
<script
	src="<c:url value="/resources/js/plugins/social-likes.min.js" />"></script>

<script src="<c:url value="/resources/js/plugins/jquery.snippet.js" />"></script>

</head>

<style>
</style>

<body>
	<div id="mainbody">
		<%@ include file="../menu.jsp"%>
		<div id="content">
			<!-- <div id="leftcontent">leftcontent</div> -->
			<%@ include file="../leftcontent.jsp"%>

			<div id="maincontent">
				<h3>ClassCast Exception</h3>
				<br>
				This exception occurs when to try to cast a Object to a class which is not an instance.
				
				In this example, We are trying to cast a String to Integer and you can see it fails.
				Integer is not instance of String class and hence it fails.
				<br>
				<div class="broken"><xmp>
public class ExceptionTest {
	public static void main(String[] args) {

		Object obj = new String("Example"); // Converting a String to Object

		System.out.println((Integer) obj); // Converting a Object to Integer

	}
}

				</xmp>
				</div>

	
<h3>Output</h3>
			<div class="broken"><xmp>
Exception in thread "main" java.lang.ClassCastException: java.lang.String cannot be cast to java.lang.Integer
	at com.test.ExceptionTest.main(ExceptionTest.java:8)
			</xmp></div>

2. In this second example, We have 2 classes Parent and Child. We get a Compile error while we try to cast parent
object to child.

<div class="broken">
<xmp>
public class ExceptionTest {
	public static void main(String[] args) {

		Parent p = new Parent(); // Parent Object
		
		Child c = new Child(); // Child Object
		
		p = c; // Parent can inherit a child
		
		c = p; // Compile error:- Child cannot access everything of Parent

	}
}

class Parent {
}

class Child extends Parent {
}
</xmp>
</div>
		
			</div>	
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
