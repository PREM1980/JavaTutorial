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
				<br> <br><a href="jdkjre.jsp"> What is the difference between JDK and JVM? </a>
				<br> <br><a href="path.jsp"> What is the difference between classpath and Path? </a><br>
				<br> <a href="stringimmu.jsp">What is the String immutability? </a><br> 
				<br> <a href="whyimmut.jsp"> Why are strings immutable in java? </a><br> <br>
				<h1>Date Conversion</h1>
				<a href="javastringdate.jsp">How to convert Java String to Date?</a><br><br>
				<a href="javadatestring.jsp">How to convert Java Date to String?</a>
				<h1>Date Time Conversion</h1>
				<a href="javastringtime.jsp">How to convert Java String to Timestamp?</a><br><br>
				<a href="javatimestring.jsp">How to convert Java Timestamp to String?</a>
				<h1>Collections</h1>

				<a href="arraylinked.jsp"><br> What is the difference between Linked List vs ArrayList?</a><br>
				<br> How HashMap works?<br>
				<br><a href="equalshash.jsp">Equals and hashcode method</a><br>
				<br> <a href="hashvalue.jsp"> How String hash value is computed in Java? </a><br><br>
				<a href="hashmaptable.jsp">What is the difference between HashMap and HashTable</a><br><br>
				<a href="maptolist.jsp">How to convert MAP TO LIST?</a>



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
