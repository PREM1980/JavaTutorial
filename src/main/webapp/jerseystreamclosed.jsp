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
				<h1>Jersey Rest Service : Stream Already Closed Error</h1>
				
				<div class="broken">
				java.lang.IllegalStateException: Stream already closed
 at org.jvnet.mimepull.DataHead$ReadMultiStream.fetch(DataHead.java:237)
 at org.jvnet.mimepull.DataHead$ReadMultiStream.read(DataHead.java:212)
 at sun.nio.cs.StreamDecoder.readBytes(StreamDecoder.java:283)
 at sun.nio.cs.StreamDecoder.implRead(StreamDecoder.java:325)
 at sun.nio.cs.StreamDecoder.read(StreamDecoder.java:177)
 at java.io.InputStreamReader.read(InputStreamReader.java:184)
 at java.io.BufferedReader.fill(BufferedReader.java:154)
 at java.io.BufferedReader.readLine(BufferedReader.java:317)
 at java.io.BufferedReader.readLine(BufferedReader.java:382)
				</div>
<br>
<br>
This is a know <a href="https://java.net/jira/browse/JAX_WS-965"> issue</a> when you use jersey multi part.
Try pulling these dependencies as mentioned in this 
<a href="http://localhost:8080/JavaTutorial/restfileupload.jsp">link</a>

Jersey Multipart 1.6 depends on MimePull 1.4 . Exclude 1.4 and include dependency explicitly.
 				
				
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
	<%@ include file="../discus.jsp"%>
	<br>
	<br>

</body>

</html>
