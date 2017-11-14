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
<html:form action="Agent.real" target="_top">
<table>
<tr>
<td>Name:<font color="red">*</font></td>
<td><html:text property="name"></html:text></td>
<td><html:errors property="name"/><td>
</tr>
<tr>
<td>Password:<font color="red">*</font></td>
<td><html:password property="password"></html:password></td>
<td><html:errors property="password"/><td>
</tr>



<tr>
<td>Address:<font color="red">*</font></td>
<td><html:textarea property="address"></html:textarea></td>
<td><html:errors property="address"/><td>
</tr>
<tr>
<td>Country:<font color="red">*</font></td>
<td><html:select property="country">
<html:option value="">- Select Country--</html:option>
<html:option value="india">India</html:option>
<html:option value="australia">Australia</html:option>
<html:option value="usa">U.S.A</html:option>
</html:select>

</td>
<td><html:errors property="country"/><td>
</tr>
<tr>
<td>City:<font color="red">*</font></td>
<td><html:select property="city">
<html:option value="">- Select City--</html:option>
<html:option value="Mumbai">Mumbai</html:option>
<html:option value="Pune">Pune</html:option>
<html:option value="Nagpur">Nagpur</html:option>
</html:select>
</td>
<td><html:errors property="city"/><td>
</tr>
<tr>
<td>Locality<font color="red">*</font></td>
<td><html:select property="locality">
<html:option value="">- Select Locality--</html:option>
<html:option value="Mumbai">Mumbai</html:option>
<html:option value="Pune">Pune</html:option>
<html:option value="Nagpur">Nagpur</html:option>
</html:select>
</td>
<td><html:errors property="locality"/><td>
</tr>
<tr>
<td>Free Website:</td>
<td><html:text property="website"></html:text></td>
<td></td>
</tr>
<tr>
<td>Contact No.:<font color="red">*</font></td>
<td><html:text property="contactNo"></html:text></td>
<td><html:errors property="contactNo"/><td>
</tr>
<tr>
<td>Specialise In</td>
<td><html:radio property="specialiseIn" value="residential">Residential</html:radio>
<html:radio property="specialiseIn" value="commercial">Commercial</html:radio>
</td>
<td><html:errors property="specialiseIn"/><td>
</tr>
<tr>
<td>Email:<font color="red">*</font></td>
<td><html:text property="email"></html:text></td>
<td><html:errors property="email"/><td>
</tr>
<tr>
<td></td>
<td><html:submit></html:submit></td></tr>
</table>

</html:form>
</body>
</html>