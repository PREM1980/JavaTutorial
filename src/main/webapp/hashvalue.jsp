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
				<h1>How STRING hashvalue is computed in Java?</h1>
			<br>
			<div class="description"> Based on the <a href="http://stackoverflow.com/questions/2427631/how-is-hashcode-calculated-in-java">
			SO</a> article, this is how the hashcode is calculated but I could find the relevant code for it in source code.</div>
			<pre class="htmlCode">
public int hashCode() {
	int h = hash;
	if (h == 0) {
		int off = offset;
		char val[] = value;
		int len = count;
 
	for (int i = 0; i < len; i++) {
		h = 31*h + val[off++];
	}
	hash = h;
	}
 	return h;
}

</pre>
<br>
More info -<br><br>
The Object class hashcode method is declared as native. Here is the code for Object class - 
<a href="http://hg.openjdk.java.net/jdk7/jdk7/jdk/file/tip/src/share/classes/java/lang/Object.java">Object.class</a>
<br>
<br>
<div class="broken">
public native int hashCode();
</div>
<br>
The native keyword indicates that it has been implemented in native code (the JVM).

<br><br>
Source code for the Object class is found here,<a href="http://hg.openjdk.java.net/jdk7/jdk7/hotspot/file/tip/src/share/vm/prims/jvm.cpp">
jvm.cpp</a><br>

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
