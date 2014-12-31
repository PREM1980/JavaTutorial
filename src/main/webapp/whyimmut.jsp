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
			<h1>Why Strings are immutable</h1>
			<div class="description">
			Strings are immutable for the following reasons - 
			<br><br>
			Read this incase you haven't <a href="stringimmu.jsp">What is the String immutability? </a><br>
			<br><br>
			
			<h3>1. String pool requirement</h3>
			
			A String pool is a JVM implementation related to Strings and it falls in the lines of <a href="http://en.wikipedia.org/wiki/String_interning">
			String interning</a>
			<br><br>
			Whenever you create a String object, the JVM checks if the same value exists in the String Pool.<br><br>
			If it exists, then JVM assigns the same references, therefore only one object is created in the heap 
			
			<pre class="htmlCode">
String s1 = "dog";
String s2 = "dog"</pre>
<br>
<br>
This is how it looks in the heap<br>

<img src="<c:url value="/resources/images/whyimmut.jpg" />" alt="Binary search" height="400" width="400">

<br><br>
<div id="description">
If the Strings are not immutable, then we will break this requirement. 
</div>
<h3>2. Security Constraints</h3>
Generally, Strings are used to pass filenames, db connections, network connections etc.. In the below example,
if the filename or username is changed(or mutable) after granting access, we will end up with a major security issue.

<pre class="htmlCode">
public class Process{
	public static void readfile(String filename, String username){
		if (!checkaccess(String filemame,String username)){
				
		}
		//If the filename is changed here then we will end up reading another file
		//processing starts
	}
}
</pre>
<h3>3.Key in hashmaps</h3>
<div id="description">
Being immutable in Java caches its hashcode,While using hashmap, in most cases we use String as the key.
Since the hashcode is cached it makes very fast as hashmap key to be used in hashmap.
</div>

<h3>4.Faster string comparison</h3>
Since the Strings are immutable, it enables faster comparison. Consider a application, where you
compare too many Strings. If the strings are same, you can just compare the references using == method.  
The .equals method will compare each character by character to check if the String value is equal or not but comparing
== will just compare the references.
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
