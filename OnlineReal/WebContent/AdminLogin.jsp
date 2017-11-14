<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="/struts.tld"  prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
  
<br>
<html:form action="AdminLogin.real" >
<table>
<tr>
<td>Administrator Name:<font color="red">*</font></td>
<td><html:text property="name"></html:text></td>
<td><html:errors property="name"/><td>
</tr>
<tr>
<td>Password:<font color="red">*</font></td>
<td><html:password property="password"></html:password></td>
<td><html:errors property="password"/><td>
</tr>
<tr>
<td><html:submit></html:submit></td>
</tr>
</table>
</html:form>


</body>
</html>