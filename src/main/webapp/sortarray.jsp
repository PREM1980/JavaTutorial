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
				<h3>How to SORT a JavaArray?</h3>
				A Java array can be sorted multiple ways - 
				
				<h2> Method 1</h2>
				Using Arrays.sort() method
				<div class="broken"><xmp>
public class CollArray {
	public static void main(String[] args) {
		
		String[] arr1 = { "Horse", "Dog", "Cat","Elephant" }; //Declare a array
		
		Arrays.sort(arr1); //Sort a array
		
		System.out.println("Sorted array = " + Arrays.toString(arr1)); // Print the results
		
	}
	}
				</xmp>
				</div>

	
<h3>Output</h3>
			<div class="broken"><xmp>
Sorted array = [Cat, Dog, Elephant, Horse]
			</xmp></div>


				<h2> Method 2</h2>
				Using Collections.sort() method
				<div class="broken"><xmp>
public class CollArray {
	public static void main(String[] args) {
		
		String[] arr2 = { "Horse", "Dog", "Cat","Elephant" }; //Declare a array
		
		Collections.sort(arr2); //Sort a array using Collections.sort
		
		System.out.println("Sorted array = " + Arrays.toString(arr2)); // Print the results
		
	}
	}
				</xmp>
				</div>

	
<h3>Output</h3>
			<div class="broken"><xmp>
Sorted array = [Cat, Dog, Elephant, Horse]
			</xmp></div>

		
			</div>	
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
