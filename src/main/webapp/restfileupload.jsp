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
				<h1>Upload files using REST WebServices - Jersey ?</h1>
			<br>
			<div class="description">
			In this example, we will authenticate a user and load a simple File, We will send a JSON response.
			</div>
			<br>
			<a href="">How to create a Simple Maven Project</a> 
			<br><br>
			<b>FOLDER STRUCTURE:-</b><br><br>
			<img src="<c:url value="/resources/images/RESTFileUploadfolder.jpg" />" alt="Binary search" height="200" width="200">
			<br><br>
			<b>MAVEN DEPENDENCIES:- pom.xml</b>
			<br>
			<br>
			Note:- You will end up getting the below errors, if you don't use all the dependencies
			<br>
			<br>
			<a href="jerseystreamclosed.jsp">Jersey Rest Service : Stream Already Closed Error</a><br><br>
			Jersey + Json media type application/json was not found
 			<br><br>
 <div class="broken">
 
<xmp>
     <project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/maven-v4_0_0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>com.test</groupId>
	<artifactId>RESTFileUpload</artifactId>
	<packaging>war</packaging>
	<version>0.0.1-SNAPSHOT</version>
	<name>RESTFileUpload Maven Webapp</name>
	<url>http://maven.apache.org</url>
	<dependencies>
		<dependency>
			<groupId>com.sun.jersey</groupId>
			<artifactId>jersey-server</artifactId>
			<version>1.8</version>
		</dependency>
		<dependency>
			<groupId>com.sun.jersey.contribs</groupId>
			<artifactId>jersey-multipart</artifactId>
			<version>1.8</version>
			<exclusions>
				<exclusion>
					<groupId>org.jvnet</groupId>
					<artifactId>mimepull</artifactId>
				</exclusion>
			</exclusions>
		</dependency>
		<dependency>
			<groupId>org.jvnet.mimepull</groupId>
			<artifactId>mimepull</artifactId>
			<version>1.8</version>
		</dependency>
		<dependency>
			<groupId>log4j</groupId>
			<artifactId>log4j</artifactId>
			<version>1.2.16</version>
		</dependency>
		<dependency>
			<groupId>com.sun.jersey</groupId>
			<artifactId>jersey-json</artifactId>
			<version>1.8</version>
			<exclusions>
				<exclusion>
					<artifactId>jettison</artifactId>
					<groupId>org.codehaus.jettison</groupId>
				</exclusion>

				<exclusion>
					<artifactId>stax-api</artifactId>
					<groupId>javax.xml.stream</groupId>
				</exclusion>
			</exclusions>
		</dependency>
		<dependency>
			<groupId>com.sun.jersey</groupId>
			<artifactId>jersey-client</artifactId>
			<version>1.18.3</version>
		</dependency>
	</dependencies>
	<build>
		<finalName>RESTFileUpload</finalName>
	</build>
</project>

</xmp>
</div>
<br>
<br>

<b>UploadFileService.java</b><br>
<br>
<b>Input :-</b> InputFileStream of data, filename, username,password<br>
<b>Output :-</b> JSON
<br>
<br>

<br>
<a href='formparamdiff.jsp'>Difference between application/x-www-form-urlencoded or multipart/form-data</a>
</br>
<pre class="htmlCode">
package com.test.rest;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import com.sun.jersey.multipart.FormDataParam;

@Path("/file")
public class UploadFileService {

	@POST
	@Path("/upload")
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	@Produces(MediaType.APPLICATION_JSON)
	public Result uploadFile(
			@FormDataParam("filecontent") InputStream uploadedstreamofdata,
			@FormDataParam("filename") String filename,
			@FormDataParam("username") String username,
			@FormDataParam("password") String password) {
		Result rs = new Result();
		if (!username.equals("test")) {
			rs.setStatus("Invalid-username-password");
			return rs;
		}
		String uploadFileLocation = "c://tomcatupload/" + filename;
		// save

		writeOutput(uploadedstreamofdata, uploadFileLocation);
		rs.setStatus("file-loaded-successfully");
		return rs;

	}

	// save uploaded file to new location
	private void writeOutput(InputStream uploadedInputStream,
			String uploadedFileLocation) {

		try {
			int read = 0;
			byte[] bytes = new byte[1024];
			OutputStream out = new FileOutputStream(new File(
					uploadedFileLocation));
			while ((read = uploadedInputStream.read(bytes)) != -1) {
				out.write(bytes, 0, read);
			}
			out.flush();
			out.close();
		} catch (IOException e) {

			e.printStackTrace();
		}

	}

}

</pre>

<br>
<br>
Output : - Result Java Object is converted into JSON.
<pre class="htmlCode">
package com.test.rest;

public class Result {
	String status;
	public Result() { //No argument constructor is a mandatory requirement
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}



</pre>

<br>
<br>web.xml<br><br>

<div class="broken">
<xmp>
<!DOCTYPE web-app PUBLIC
 "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
 "http://java.sun.com/dtd/web-app_2_3.dtd" >

<web-app>
	<display-name>Archetype Created Web Application</display-name>
	<servlet>
		<servlet-name>jersey-servlet-location</servlet-name>
		<servlet-class>
			com.sun.jersey.spi.container.servlet.ServletContainer
		</servlet-class>
		<init-param>
			<param-name>com.sun.jersey.config.property.packages</param-name> 
			<!--  the required Objects are found in this package -->
			<param-value>com.test.rest</param-value>
		</init-param>
		<init-param>
			<param-name>com.sun.jersey.api.json.POJOMappingFeature</param-name> 
			<!--  Very imp:- or else the RESULT Object won't be converted to JSON Object. -->
			<param-value>true</param-value> 
		</init-param>
		<load-on-startup>1</load-on-startup>
	</servlet>
	<servlet-mapping>
		<servlet-name>jersey-servlet-location</servlet-name> 
		<!--  rest/* url will come here and try to find jersey-servlet-location-->
		<url-pattern>/rest/*</url-pattern>
	</servlet-mapping>

</web-app>
</xmp>
</div>

<br>
<br>

RESTCLIENT:

<pre class="htmlCode">
package com.test.rest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import javax.ws.rs.core.MediaType;

import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.multipart.FormDataBodyPart;
import com.sun.jersey.multipart.FormDataMultiPart;

public class RestClient {
	public static void main(String[] args) throws FileNotFoundException {
		//Create a client
		Client client = Client.create();
		//Attach a resource
		WebResource resource = client
				.resource("http://localhost:8080/RESTFileUpload/rest/file/upload");
		//File that will be uploaded
		String filename = "C:/maven/README.txt";
		//Create a Input stream
		InputStream inpstream = new FileInputStream(filename);
		//Multipart form data for loading files
		FormDataMultiPart form = new FormDataMultiPart();
		//Create body part, you can attach multiple body parts
		FormDataBodyPart fdp = new FormDataBodyPart("filecontent",
                inpstream, MediaType.APPLICATION_OCTET_STREAM_TYPE);
        //Add the body part to the form
		form.bodyPart(fdp);
		//Call the resource
		ClientResponse response = resource.type(MediaType.MULTIPART_FORM_DATA).post(ClientResponse.class, form);
		//Check for the response status = 200 is successful.
		if (response.getStatus() != 200){
			throw new RuntimeException("Failed request =  " + response.getStatus());
		}
		//Convert and print the JSON response
		String output = response.getEntity(String.class);
		System.out.println(output);
	}
}

</pre>
<h2>Download<h2>

<a href="<c:url value="/resources/downloads/RESTFileUpload.zip"/>">Click here</a>

			</div>
			

			<div id="rightcontent">rightcontent</div>
			<!-- <div id="commentcontent">commentcontent</div> -->
		</div>
		<!-- <div id="footer">footer</div> -->
		<div style="clear: both;"></div>
		<br>
		<br>
		<%@ include file="../discus.jsp"%>
	</div>
	<br>
	<br>
	<br>
	<br>

</body>

</html>
