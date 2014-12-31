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
				<h3>How to convert Map to List?</h3>
				You can convert a MAP To LIST using the below program.
				
				<pre class="htmlCode">
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class Scratch {

	public static void main(String[] args) {
		HashMap<String,String> cars = new HashMap<String,String>();
		cars.put("SUV","LAND ROVER");
		cars.put("SEDAN","CAMRY");
		cars.put("JEEP","WRANGLER");
		
		List<String> keys = new ArrayList<String>(cars.keySet()); //Get all Keys
		System.out.println(keys);
		
		List<String> values = new ArrayList<String>(cars.values()); //Get all values
		System.out.println(values);
		
		List<Entry> items = new ArrayList<Entry>(cars.entrySet()); //Get all entries
		System.out.println(items);
	}

}
				</pre>
								
								<br>
								<br>
								<div class="broken">
								<b>OUTPUT:</b><br>
								<br>
								
[JEEP, SUV, SEDAN]<br>
[WRANGLER, LAND ROVER, CAMRY]<br>
[JEEP=WRANGLER, SUV=LAND ROVER, SEDAN=CAMRY]
								</div>
			</div>	
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
