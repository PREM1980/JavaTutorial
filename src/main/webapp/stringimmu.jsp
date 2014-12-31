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
			<h1>String Immutability</h1>
			<div id="description">
			Strings are immutable in Java. Immutable means the strings can't me modified or changed after creation.
			</div>
			<pre class="htmlCode">
String s1 = "dog";             //creates new memory address(s1 references memory address)
System.out.println(s1);        //prints to "dog"
s1.concat("horse");            //creates new memory address
System.out.println(s1);        //still prints to "dog".
s1 = "cat";                    //creates new memory address(s1 references memory address)
System.out.println(s1);        //prints "cat"
</pre>
<div id="description">
In the above example,<br><br> 
1. A new String Object is created (in String pool) and assigned a value "dog". This String object is referenced as s1.
<br><br>
2. A new String Object is created (in String pool) and assigned a value "horse" but it has no references.
<br><br>
3. Another String Object is created (in String pool) and assigned a value "cat".  This String object is assigned the reference s1.
<br><br>

The easiest way to understand is to separate the object creation(in string pool) and references.

<br>
<br>
The below diagram will show how the string pool looks after each line.
<br><br>
<br>
<img src="<c:url value="/resources/images/immutable.jpg" />" alt="Binary search" height="400" width="400">
<br><br><br><br>
Incase, you want use the same memory address to be reused without leaving behind a lot of unused objects you can
StringBuffer.
<br><br>
<pre class="htmlCode">
StringBuffer s2 = new StringBuffer("dog");    //creates new memory address(s2 is used to reference the memory address)
System.out.println(s2);     // prints "dog"
s2.append("horse");         // rewrites the same string, note the append method instead of concat
System.out.println(s2);     // prints "doghorse"

</pre>
<br><br><br><br>

<img src="<c:url value="/resources/images/immutable1.jpg" />" alt="Binary search" height="400" width="400">
</div>
			</div>
		</div>
		<%@ include file="../rightcontent.jsp"%>
		
	</div>
	<!-- <div id="footer">footer</div> -->
	<div style="clear: both;"></div>
	</div>
	<%@ include file="../discus.jsp"%>
	<br>
	<br>
	<br>
	<br>

</body>

</html>
