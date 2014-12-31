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
				<h3>Convert Java Date to Java String</h3>
				<div class="impnote">
				DateFormats are not synchronized. If its used by multi-threads then you need to synchronize externally for each format instance.
				</div>
				<pre class="htmlCode">
public class Scratch {

	public static void main(String[] args) {
		Date date = new Date();				 //Get Current date
		System.out.println(date.getClass()); //Get the Type of the date
		System.out.println(date.toString()); //Convert it into String
		//
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm"); // Needed date format - yyyy/MM/dd HH:mm
		System.out.println(sdf.format(date)); // Tue Dec 23 23:50:40 EST 2014
		//
		sdf = new SimpleDateFormat("MMM-dd-yy HH:mm:ss"); // Needed date format -MMM-dd-yy HH:mm:ss
		System.out.println(sdf.format(date)); //Dec-23-14 23:50:40
		//
		sdf = new SimpleDateFormat("MMM,dd,yyyy"); //Needed date format - MMM,dd,yyyy 
		System.out.println(sdf.format(date)); //Dec,23,2014 
		}
}
</pre>

<b> Output</b>
<br>
<br>
<div class="broken">
class java.util.Date
<br>
Tue Dec 23 23:50:40 EST 2014
<br>
2014/12/23 23:50
<br>
Dec-23-14 23:50:40
<br>
Dec,23,2014
<br>
</div>
				
				
			</div>
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
