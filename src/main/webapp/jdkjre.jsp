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
				<h1>Difference between JRE and JDK</h1>

				<h2>JRE - Java Run time Environemnt</h2>
				<div class="description">JRE stands for Java Run Time
					Environment. JRE contains JVM, libraries and other files for
					running the <br> <br>application. You need JRE to run any Java program.</div>
				<img src="<c:url value="/resources/images/jre.jpg" />"
					alt="Binary search" height="400" width="400"> <br> <br>

				<hr>

				<h2>JDK - Java Development KIT</h2>
				<div class="description">
					JDK stands for Java Development Kit. You need this KIT to write any
					Java programs and compile it. The JDK <br> <br> contains the JRE within it
					and additional tools to develop program.<br> <br> For
					ex:- If you need to compile a Java program you need JDK <br> <br>
					<u>Here are few tools that JDK provides </u> - <br> <br>
					1. Javac - Compiler <br> 2. XJC - Generate Java classes from
					XML Schema <br> 3. WSIMPORT - Generate Java client objects
					using SOAP wsdl.. <br> 4. KEYTOOL - Key and certificate
					management utility. <br> <br> These are very few
					examples..
				</div>
				<img src="<c:url value="/resources/images/jdk.jpg" />" alt="jre jdk"
					height="400" width="600">
				<hr>
				<h2>JVM - Java Virtual Machine</h2>
				<div class="description">
					Java Virtual Machine is abstract computer defined by a specification.
					JVM spec omits implementation details. It loads the code and executes it.
				</div>
			</div>


		</div>
	</div>
	<%@ include file="../rightcontent.jsp"%>
	<!-- <div id="rightcontent">rightcontent</div>-->
	<!-- <div id="commentcontent">commentcontent</div> -->
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
