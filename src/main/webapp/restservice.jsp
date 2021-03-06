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
		<%@ include file="../menu.jsp"%>
		<div id="content">
			<!-- <div id="leftcontent">leftcontent</div> -->
			<%@ include file="../leftcontent.jsp"%>
			<div id="maincontent">
			<h2>Simple Examples</h2>
				<br> <a href="restfileupload.jsp">Simple REST Service using JAX-RS</a> 
				<br> <br> <a href="restfileupload.jsp">Upload files(text,pdf,excel,any file) using REST WebServices - Jersey</a> <br>
				<br>
				<a href="consumejsonproducejson.jsp">REST Service - Consume JSON / Produce JSON</a>
				<br>
				<br>
					<a href='formparamdiff.jsp'>Difference between application/x-www-form-urlencoded and multipart/form-data</a>
				<br>
				<br>
				<b><h1>Errors:-</h1></b><br>
				<a href="jerseystreamclosed.jsp">Jersey Rest Service : Stream Already Closed Error</a><br><br>
				
				Jersey + Json media type application/json was not found - Please use the maven dependencies as mentioned
				in this <a href="restfileupload.jsp">link</a>  								
			</div>

			<div id="rightcontent">rightcontent</div>
			<!-- <div id="commentcontent">commentcontent</div> -->
		</div>
		<!-- <div id="footer">footer</div> -->
	</div>
	<br>
	<br>
	<br>
	<br>

</body>

</html>
