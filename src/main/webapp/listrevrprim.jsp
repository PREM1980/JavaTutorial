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
				<h3>How to SORT a JavaList of primitives?</h3>
				Using Collections.sort() method
				<div class="broken"><xmp>
public class CollArray {
	public static void main(String[] args) {
		
		ArrayList al = new ArrayList(); // Declare a array list
		al.add("cat"); // add items
		
		al.add("dog");
		
		al.add("horse");
		
		al.add("elephant");
		
		System.out.println(al); //Print the list 
		
		Collections.reverse(al); //Sort the list
		
		System.out.println("Reversed list = " + al); //Print the list

		
	}
	}
				</xmp>
				</div>

	
<h3>Output</h3>
			<div class="broken"><xmp>
Reversed List = [elephant, horse, dog, cat]
			</xmp></div>

		
			</div>	
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
