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

<script src="<c:url value="/resources/js/plugins/jquery.snippet.js" />" ></script>

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
			<h3>Binary Search in Python</h3>
			
			<br>
			<br>
			                       
			<img src="<c:url value="/resources/images/binarysearch.jpg" />" alt="Binary search" height="400" width="400">
			<br><br>
			<H3>Simple program to perform Binary Search</H3>
			<div class="description">
			1. This function takes a simple list, length of the list and the key that needs to be searched.
			<br>
			It returns '-1' if the String is not found or else returns the position of the String.
			</div>
			<div>
			<br><br>
				<pre class="htmlCode">
def BinarySearch(array,number_of_elements, key): 
	low = 0 							#initialiaze the low value
	high = number_of_elements-1 		#set the high values
	mid = 0; 						     #initialize the middle value
	while(low <= high): 
		mid = (low + high)/2; 	
		if(array[mid] < key): 			#Check if the middle element is less than the key
			low = mid + 1 
		elif(array[mid] == key): 		#if the key is same return the middle value
			return mid
		elif(array[mid] > key): 		#Check if the middle element is greater than the key
			high = mid-1 
	return -1;							#If nothing is found return -1
	
</pre>
</div>

<br><br>
<div class="description">
	2. Run the program now.
<div>
<br><br>
<pre class="htmlCode">
inp = """Whether they filled with green juice,<br> fruit smoothies or full-on sippable meal replacements,
 people want their protein, vitamins and minerals on the go and on the double."""
inp = [each.lower() for each in inp.split()]
print "Output = " , BinarySearch(sorted(inp), len(inp), key="filled")
print "Output = " ,BinarySearch(sorted(inp), len(inp), key="test")

</pre>
<br><br>
</div>
<div id="description">
	3.	Output
</div>
<br><br>
<pre class="htmlCode">
Output =  3
Output =  -1
</pre>



</div>
</div>
			
			
			<div id="rightcontent">rightcontent</div>
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
