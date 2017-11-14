<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<jsp:include page="header.jsp" />
  
<br>

<table align="left">
		<tr>
		<td>
		       <img src="C:\Documents and Settings\user63\Desktop\pro\OnlineReal\WebContent\New Folder\images\big_photo.jpg" style="height: 210px; width: 209px; "/>
		</td>
		</tr>
</table>



<html:form action="authenticate.*" target="_top">
	<table align="center">


<fieldset style="height: 120px; width: 260px">
			  		
    						<legend>Login</legend>
  								 
  							<tr>
	<td>Email Id :</td>
	<td> <html:text property="email"/><br/></td><td><html:errors property="email"/></td>
	</tr>
	<tr>
	<td>Password :</td>
	<td> <html:password property="password"/><br/></td>
	<td><html:errors property="password"/></td>
	</tr>
	<tr>
	<td> Type:</td>
	<td><html:select property="type">
	<html:option value="individual">Individual</html:option>
	<html:option value="Agent">Agent</html:option>
	<html:option value="Builder">Builder</html:option>
	</html:select><br/>
	</td>
	<td></td>
	</tr>
	<tr>
	<td>
	<html:submit value="Login" />
	</td>
	<td>
	<html:link href="demo.html" target="_top">New User</html:link></td>
	<td></td></tr>	 
  								 
  								 
  					</fieldset>
  					</table>
				</html:form>
		

















	
<%-- 	<tr>
	<td>Email Id :</td>
	<td> <html:text property="email"/><br/></td><td><html:errors property="email"/></td>
	</tr>
	<tr>
	<td>Password :</td>
	<td> <html:text property="password"/><br/></td>
	<td><html:errors property="password"/></td>
	</tr>
	<tr>
	<td> Type:</td>
	<td><html:select property="type">
	<html:option value="individual">Individual</html:option>
	<html:option value="Agent">Agent</html:option>
	<html:option value="Builder">Builder</html:option>
	</html:select><br/>
	</td>
	<td></td>
	</tr>
	<tr>
	<td>
	<html:submit value="Login"/>
	</td>
	<td>
	<html:link href="demo.html">New User</html:link></td>
	<td></td></tr> --%>
	</table>
	<!-- <html:errors property="userName"/><br/> -->
	
</body>
</html>