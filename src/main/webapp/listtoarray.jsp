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
				<h3>How to convert a list to Array?</h3>
				
				<div class="broken"><xmp>
public class CollArray {
	public static void main(String[] args) {
		
		ArrayList al = new ArrayList(); // Declare a array list
		
		al.add("cat"); // add items
		
		al.add("dog");
		
		al.add("horse");
		
		al.add("elephant");
		
		String[] strarr = (String[]) al1.toArray(new String[al2.size()]); 
		
		//Convert list to array using toArray
		
		System.out.println("String array = " + Arrays.toString(strarr));

		
	}
	}
				</xmp>
				</div>

	
<h3>Output</h3>
			<div class="broken"><xmp>
String array = [cat, dog, horse, elephant]
			</xmp></div>

		
			</div>	
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
