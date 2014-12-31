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
				<h3>Difference between hashmap and hashtables</h3>
				<div class="description">
				1. HashTables are thread safe as all the methods are synchronized. HashMap is not synchronized 
				<br><br>
				Here is an example from source code - 
				<br><br>
				<span class="impnote">HashTable</span> - public <span class="impnote"> <b>synchronized</b> </span>boolean containsKey(Object key)
				<br><br>  
				<span class="impnote">HashMap</span> -   public boolean containsKey(Object key) 
				
				<br><br>
				HashTable is used in multi-threaded application due to concurrency - only one thread can manipulate at any point in time.
				HashMap is used in single threaded application.
				<br><br>
				2. In HashTable, Neither the Key nor the value can be null
				but HashMap can accept null keys and values.
				<br> To test it, run this code (tested in jdk 7) 
				<pre class="htmlCode">
Map<String,String> map = new HashMap<String,String>();
map.put(null, null);
Iterator<Map.Entry<String,String>> entries = map.entrySet().iterator();
while (entries.hasNext()) {
	Entry<String, String> entry = entries.next();
	System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue());
	}
		
Hashtable ht = new Hashtable();
ht.put(null, null); //Will throw NULL Pointer Exception
</pre>

3. Another major difference - HashMap Iterator will throw concurrent modification exception when we change the underlying element.
<br>

<pre class="broken">
HashMap map = new HashMap();
map.put("company1", "BOA");
map.put("company2", "Citi");
map.put("company3", "Credit Union");
		
Set keys = map.keySet();
for (Object key : keys) {
    map.put("A", "B"); //it will throw the ConcurrentModificationException here
} 
</pre>

HashTable enumerator does work fine if we change the underlying element

<pre class="broken">
Hashtable htable = new Hashtable();

// put values in table
htable.put(1, "A");
htable.put(2, "B");
htable.put(3, "C");
htable.put(4, "D");
		
		
Enumeration tkeys = htable.keys();
while (tkeys.hasMoreElements()) {
	htable.put(5, "C");
	System.out.println(tkeys.nextElement());
}

</pre>

				</div>
				
			</div>
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
