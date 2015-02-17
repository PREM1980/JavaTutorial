<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<%@ include file="jsfile.jsp"%>

<script>
	
</script>
</head>

<body>

	<div id="mainbody">
		<%@ include file="menu.jsp"%>
		<!-- 
		<div id="menu">
			<span class="menuitem"><a href="basicjava.jsp"><b>Basic
						Java</b> </a></span> <span class="menuitem"><a href="/"><b>Servlets</b></a></span>
			<span class="menuitem"><a href="basicjava.jsp"><b>JSP</b></a></span>
			<span class="menuitem"><a href="basicjava.jsp"><b>Spring</b></a></span>
			<span class="menuitem"><a href="basicjava.jsp"><b>SOAP
						WebService</b></a></span> <span class="menuitem"><a href="basicjava.jsp"><b>REST
						WebService</b></a></span> <span class="menuitem"><a href="basicjava.jsp"><b>ANT</b>
			</a></span> 
			<span class="menuitem"><a href="python/python.jsp"><b>Python</b></a> </span>

		</div>
		 -->
		<div id="content">
			<!-- <div id="leftcontent">leftcontent</div> -->
			<%@ include file="leftcontent.jsp"%>

			<div id="maincontent">
				<h1>Difference between application/x-www-form-urlencoded or
					multipart/form-data</h1>
				<br>
				multipart/form-data  && application/x-www-form-urlencoded <br> 
				They are 2 content types headers for HTTP POST that browsers must support.
				Its purpose is to send a list of name/value pairs to the server.
				One is better than other based on the amount of data being transmitted and its type.
				<br>
				For application/x-www-form-urlencoded, the body of the HTTP message sent to the server is a query string -- 
				name/value pairs are separated by (&) ampersand and names are separated from values by the (=)equal symbal . 
				An example of this would be:
			key1=Value1&key2=value2
			In Multipart/form-data, each name/value pair is represented as a 'part' in a mime message. Parts are 
			separated by a particular string boundary.Each part has its own set of MIME headers like Content-type and 
			content-disposition. 
				Multipart/form-data is used to transmit files or binary data.
			</div>
		</div>

		<div id="rightcontent">rightcontent</div>
		<!-- <div id="commentcontent">commentcontent</div> -->
	</div>
	<!-- <div id="footer">footer</div> -->
	<div style="clear: both;"></div>
	</div>
	<br>
	<br>
	<br>
	<br>

</body>

</html>
