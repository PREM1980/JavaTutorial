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
				<h3>Convert Java String to Java Timestamp</h3>
				<div class="impnote">
				DateFormats are not synchronized. If its used by multi-threads then you need to synchronize externally for each format instance.
				</div>
				<pre class="htmlCode">
public class datetime {
	public static void main(String[] args) {
		String yourString = "2012-01-01 14:04:59:612";
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss:SSS");
		java.util.Date parsedDate;
		try {
			parsedDate = dateFormat.parse(yourString);
			java.sql.Timestamp timestamp = new java.sql.Timestamp(parsedDate.getTime());
			System.out.println(timestamp);
			System.out.println(timestamp.getClass());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}</pre>

<b> Output</b>
<br>
<br>
<div class="broken">
2012-01-01 14:04:59.612 //java Timestamp
class java.sql.Timestamp //prints the type of the object - Timestamp
</div>
				
				
			</div>
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
