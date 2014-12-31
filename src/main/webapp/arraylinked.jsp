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
				<h3>Difference between arraylist vs linkedlist</h3>
				<h3>ARRAYLIST</h3>
				<div id="description">
				
				Arraylist implements List interface and extends AbstractList.
				<br>Generally, <b>ARRAYS</b> are of fixed length. Once its created they cannot be increased or shrink.<br>
				<b>ARRAYLIST</b> size can be decreased or increased.
				The default Arraylist creates and array of size 10.
				<br><br>
				<div class="broken">
public ArrayList() {<br>
		this(10);<br>
}
</div>
        		 </div>
        	<br>
        		 Anytime you increase this size the array is re-sized and that is the primary reason arrays
        		 are slow for <b>INSERTION and DELETION</b> but faster for <b>SEARCHING</b> as the values are stored in <b>CONTIGOUS</b> memory.
        		 <br>
   			<img src="<c:url value="/resources/images/arraylist.jpg" />" alt="Binary search" height="400" width="400">	
			
			<h3>LINKEDLIST</h3>
			Implements List and Deque interface and extends AbstractSequentialList.
			<br>
			Linkedlist is a linear data structure that consists of interlinked nodes. 
			Each node consist of 2 parts - data and reference to other node.
			<br>
			<br>
			<img src="<c:url value="/resources/images/linkedlist.jpg" />" alt="Binary search" height="400" width="400">
			
			<br> When we compare to the arraylist the values are not stored CONTIGOUS, which means it takes lot of time
			to <b>SEARCH</b> for a element but INSERTION and DELETION are faster.
			<br><br>
			SO, Here is the difference summary - 
			
			<br>
			<br>
			<b>GET</b><br><br>
				1. Arrays are index-based data structure that provides O(1) performance using this method get(index).
				2. LinkedList does not provide index based access and you need to iterate over linked list to get any element.
			which is order(n).
				3. The data in arraylist is stored CONTIGOUS and thus its very fast to iterate.<br><br>
			<b><u>INSERT</u></b><br><br>
				1. ArrayList needs re-sizing of array whenever the arraylist gets full which makes adding to arraylist O(n).
				2. LinkedList insertion is o(1) as we there is no need of re-sizing.
				<br><br>
			<b><u>DELETE</u></b><br><br>
				1. LinkedList deletion is much better.
				<br><br>
			<b><u>MEMORY USAGE</u></b><br><br>
				LinkedList consumes more memory as each node object holds reference to another object.
				
			</div>	
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
