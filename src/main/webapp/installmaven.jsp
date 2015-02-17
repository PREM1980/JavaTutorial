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
			<div id="maincontent"><br>
			<br><br>
			Check this video on how to install Maven?
			<br>
			<br>
				<iframe width="560" height="315" src="//www.youtube.com/embed/SoqiFI6TJ2k" frameborder="0" allowfullscreen></iframe>

			</div>

				<%@ include file="../rightcontent.jsp"%>
	<!-- <div id="rightcontent">rightcontent</div>-->
	<!-- <div id="commentcontent">commentcontent</div> -->
	</div>
	<!-- <div id="footer">footer</div> -->
	<div style="clear: both;"></div>
	</div>
	<%@ include file="../discus.jsp"%>
		<!-- <div id="footer">footer</div> -->
	</div>
	<br>
	<br>
	<br>
	<br>

</body>

</html>
