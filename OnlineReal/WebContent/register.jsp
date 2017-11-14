<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts.tld" prefix="html" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<table align="left">
		<tr>
		<td>
		       <img src="D:\RC\Project\Java Project\CDAC Proj\OnlineReal\WebContent\New Folder\images\big_photo.jpg" style="height: 210px; width: 209px; "/>
		</td>
		</tr>
</table>
<html:form action="Authenticate.real">
<table border=1 width=100% height=100%>
<tr>
<td width=50%><html:radio property="transactionType" value="Buy">Buy</html:radio></td>
<td><html:radio property="transactionType" value="Rent">Rent</html:radio></td>
</tr>
<tr>
<td></td>
<td><html:select property="propertyType">
		<html:option value="0">Residential</html:option>
		<html:option value="1">Commercial</html:option>
</html:select></td>
</tr>
<tr>
<td></td>
<td><html:select property="city">
		<html:option value="0">Mumbai</html:option>
		<html:option value="1">Pune</html:option>
		</html:select></td>
</tr>
<tr>
<td><html:select property="minBudget">
		<html:option value="0">10lakhs</html:option>
		<html:option value="1">20lakhs</html:option>
		</html:select></td></td>
<td><html:select property="maxBudget">
		<html:option value="0">20Lakhs</html:option>
		<html:option value="1">30lakhs</html:option>
		</html:select></td>
</tr>

<tr>
<td></td>
<td><html:submit></html:submit></td>
</tr>
</table>
</html:form>
</body>
</html>