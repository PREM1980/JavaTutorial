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
				<h3>How to REVERSE a JavaArray?</h3>
				A Java array can be reverse multiple ways - 
				
				<h2> Method 1</h2>
				Using org.apache.commons.lang.ArrayUtils library
				<div class="broken"><xmp>
public class CollArray {
	public static void main(String[] args) {
		
		 String[] arr3 = { "Cat","Dog", "Elephant","Horse" }; // Declare a array
	
		 ArrayUtils.reverse(arr3); Using // Array Utils - org.apache.commons.lang.ArrayUtils
		 
		 System.out.println("Reversed array = " + Arrays.toString(arr3)); // print a array
		
	}
	}
				</xmp>
				</div>

	
<h3>Output</h3>
			<div class="broken"><xmp>
Reversed array = [Horse, Elephant, Dog, Cat] 
			</xmp></div>


				<h2> Method 2</h2>
				Using Collections.reverse() method
				<div class="broken"><xmp>
public class CollArray {
	public static void main(String[] args) {
		
		String[] arr2 = { "Horse", "Dog", "Cat","Elephant" }; //Declare a array
		
		Collections.reverse(arr2); //Reverse a array using Collections.reverse()
		
		System.out.println("Reversed array = " + Arrays.toString(arr2)); // Print the results
		
	}
	}
				</xmp>
				</div>

	
<h3>Output</h3>
			<div class="broken"><xmp>
Reversed array = [Horse, Elephant, Dog, Cat]
			</xmp></div>


				<h2> Method 3</h2>
				Writing Java program
				<div class="broken"><xmp>
public class CollArray {
	public static void main(String[] args) {
		String[] arr4 = { "Cat","Dog", "Elephant","Horse" }; // Declare a array
		
		int left = 0; //intial position of the array
		
		int right = arr4.length - 1; //final position of the array
		
		while (left < right){
			String temp = arr4[left]; // store the correct occurence in temp variable
			arr4[left] = arr4[right]; // switch the left position value 
			arr4[right] = temp;       // switch the right position value
			++left; 				  // Increase the left position
			--right; 				  // Decrease the right position
			
		}
		System.out.println(Arrays.toString(arr4)); // Print the array
		
	}
	}
				</xmp>
				</div>

	
<h3>Output</h3>
			<div class="broken"><xmp>
Reversed array = [Horse, Elephant, Dog, Cat]
			</xmp></div>


		
			</div>	
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
