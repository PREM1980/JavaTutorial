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
				<h3>Difference between CLASSPATH and PATH</h3>
				<div class="description">
				
			Most of the time, you stumble wondering what is the difference between CLASSPATH and PATH variable.
			
			<br><br>Here is the difference explained using 2 cases, <br><br>
			<b><u>CASE:1</u></b>
			<br>In this example, we are creating a simple program - Animal under package animalpkg and folder c:/tutorial1.
			<br><br>
			PATH variable is used by the System to load all the java(javac from JDK Libraries) executables.
			<br>
			CURRENT FOLDER will be the DEFAULT CLASSPATH.
			 <br><br>
			<img src="<c:url value="/resources/images/pathcase1.jpg" />" alt="Binary search" height="400" width="600">
			<br><br><br><br><br><br><br>
			<b><u>CASE:2</u></b><br><br>
			<br>In this example, we are reusing program - Animal under package animalpkg and folder c:/tutorial1.
			<br>
			It also refers Dog under package dogpkg and folder c:/tutorial2, which needs to be included under CLASSPATH.
			<br><br>
			PATH variable is used by the System to load all the java(javac from JDK Libraries) executables.
			<br>
			CLASSPATH is SET, so that other class libraries(User written) can be located.
			<br><br>
			<img src="<c:url value="/resources/images/pathcase2.jpg" />" alt="Binary search" height="400" width="600">
			
			<br><br>
			<br>			
			<div class="impnote">
			Classes in default package cannot be imported by classes in packages. 
			This is the reason you should not use the default package.
			</div>
			<br><br>
			Ref: <a href="http://docs.oracle.com/javase/specs/jls/se7/html/jls-7.html">Unnamed package</a>
			<hr>
			<br>
			<br>
			Another notable difference is CLASSPATH can be set in the command line using -CP option to both
			"java" and "javac" commands.
			<br>
			<br>
			<hr>
			<b>How to set PATH AND CLASSPATH</b>
			<br><br><b>WINDOWS PATH Variable</b><br>
			set PATH=%PATH%;C:\Program Files\Java\JDK1.7.0_67\bin
			<br><br><b>LINUX/UNIX PATH Variable</b><br>
			export PATH = ${PATH}:/opt/Java/JDK1.7.0_67/bin
			<br><br><b>WINDOWS CLASSPATH Variable</b><br>
			set CLASSPATH=%CLASSPATH%;C:\Program Files\Java\JDK1.7.0_67\lib
			<br><br><b>LINUX/UNIX PATH Variable</b><br>
			export CLASSPATH= ${CLASSPATH}:/opt/Java/JDK1.7.0_67/lib
			</div>
			</div>
			
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
