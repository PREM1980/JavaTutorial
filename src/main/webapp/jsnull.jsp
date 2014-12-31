<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
 
<link href="<c:url value="/resources/css/plugins/jquery.snippet.css" />" rel="stylesheet">

<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<link
	href="<c:url value="/resources/css/plugins/social-likes_birman.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
<script src="<c:url value="/resources/js/test.js" />"></script>
<script
	src="<c:url value="/resources/js/plugins/social-likes.min.js" />"></script>
<script
	src="<c:url value="/resources/js/plugins/jquery.snippet.js" />"></script>
	
</head>

<style>
</style>

<body>
	
	<div id="mainbody">
		<%@ include file="menu.jsp"%>
		<!-- 
		<div id="menu">
			<span class="menuitem"><a href="basicjava.jsp"><b>Basic
						Java</b> </a></span> <span class="menuitem"><a href="/"><b>Servlets</b></a></span>
			<span class="menuitem"><a href="basicjava.jsp"><b>JSP</b></a></span>
			<span class="menuitem"><a href="basicjava.jsp"><b>Spring</b></a></span>
			<span class="menuitem"><a href="basicjava.jsp"><b>SOAP
						WebService</b></a></span> <span class="menuitem"><a href="basicjava.jsp"><b>REST
						WebService</b></a></span> <span class="menuitem"><a href="basicjava.jsp"><b>ANT</b>
			</a></span> 
			<span class="menuitem"><a href="python/python.jsp"><b>Python</b></a> </span>

		</div>
		 -->
		<div id="content">
			<!-- <div id="leftcontent">leftcontent</div> -->
			<%@ include file="leftcontent.jsp"%>
			
			<div id="maincontent">
<h1>Difference between UNDEFINED AND NULL in Javascript</h1>
			<br>
			<div class="description">
			Undefined is when a variable is declared and no value is assigned.
			<pre class="htmlCode">
var a; //here a will be assigned a value of undefined</pre>
			<br><br>
			NULL is when a variable is declared and assigned to NULL value.
			
			<br><br>
			<pre class="htmlCode">
var a = null; //here a will be assigned a value of null</pre>
			<br><br>
			</div>
			 Here is a simple example:-
			 <br><br>
			 <img src="<c:url value="/resources/images/jsnulls.jpg" />" alt="Binary search" height="400" width="400">
			</div>

			<div id="rightcontent">rightcontent</div>
			<!-- <div id="commentcontent">commentcontent</div> -->
		</div>
		<!-- <div id="footer">footer</div> -->
		<div style="clear: both;"></div>
	</div>
	<br>
	<br>
	<br>
	<br>

</body>

</html>
