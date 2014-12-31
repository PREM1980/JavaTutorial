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
				<h3>Convert Java String to Java Date</h3>
				<div class="impnote">
				DateFormats are not synchronized. If its used by multi-threads then you need to synchronize externally for each format instance.
				</div>
				
				<br><br><br>
				<b>Case 1</b> :- Convert String <b> "Jan-31-2001" </b> to JavaDate. 
				<pre class="htmlCode">
Class DateTest{
	public static void main(String[] args){
	String date_string = "Jan-31-2001";
	Date date;
	DateFormat formatter;
	formatter = new SimpleDateFormat("MMM-dd-yy");
	try {
		date = formatter.parse(date_string);
		System.out.println(date);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	} 
}
</pre>
<br>

Output
<pre class="htmlCode">
Wed Jan 31 00:00:00 EST 2001
Jan-31-01
</pre>
<br>

				<b>Case 2</b> :- Convert String <b> "Jan-31-2001" </b> to JavaDate. 
				<pre class="htmlCode">
Class DateTest{
	public static void main(String[] args){
	String date_string = "30-Oct-2001";
	Date date;
	DateFormat formatter;
	formatter = new SimpleDateFormat("dd-MMM-yy");
	try {
		date = formatter.parse(date_string);
		System.out.println(date);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	} 
}
</pre>
Output
<pre class="htmlCode">
Tue Oct 30 00:00:00 EST 2001
30-Oct-01
</pre>

<br><br>

<u></u><b>Some useful formatter's</b></u>
<br>
<br>
<table class="tg">
  <tr>
    <th class="tg-031e"><b>Letter</b></th>
    <th class="tg-031e"><b>Description</b></th>
    <th class="tg-031e"><b>Example</b></th>
  </tr>
  <tr>
    <td class="tg-031e">y</td>
    <td class="tg-031e">Year</td>
    <td class="tg-031e">2001;01</td>
  </tr>
  <tr>
    <td class="tg-031e">M</td>
    <td class="tg-031e">Month in year</td>
    <td class="tg-031e">Jan;01</td>
  </tr>
  <tr>
    <td class="tg-031e">D</td>
    <td class="tg-031e">Day in a year</td>
    <td class="tg-031e">160</td>
  </tr>
  <tr>
    <td class="tg-031e">a</td>
    <td class="tg-031e">am/pm</td>
    <td class="tg-031e">PM</td>
  </tr>
  <tr>
    <td class="tg-031e">H</td>
    <td class="tg-031e">Hour in a day(0 to 23)</td>
    <td class="tg-031e">0</td>
  </tr>
  <tr>
    <td class="tg-031e">m</td>
    <td class="tg-031e">Minute in hour</td>
    <td class="tg-031e">30</td>
  </tr>
  <tr>
    <td class="tg-031e">s</td>
    <td class="tg-031e">Seconds in Minute</td>
    <td class="tg-031e">43</td>
  </tr>
  <tr>
    <td class="tg-031e">S</td>
    <td class="tg-031e">MilliSeconds</td>
    <td class="tg-031e">288</td>
  </tr>
</table>
<br>
<br>
Reference:- <a href="http://docs.oracle.com/javase/6/docs/api/java/text/SimpleDateFormat.html">SimpleDateFormat</a>
				
			</div>
			<div id="rightcontent">rightcontent</div>
			<div style="clear: both;"></div>
		</div>
		<%@ include file="../discus.jsp"%>
		<br> <br> <br> <br>
</body>

</html>
