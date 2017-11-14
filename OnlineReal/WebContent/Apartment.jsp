<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
  
<br>
<form action="InsertDB.jsp" >
<input type="hidden" value="apartment" name="type"/>
<table>
<tr>
<td>FlatNo</td>
<td><input type="text" name="flatNo"></td>
</tr>
<tr>
<td>ApartmentName</td>
<td><input type="text" name="apartmentName"></td>
</tr>
<tr>
<td>Locality</td>
<td><input type="text" name="locality"></td>
</tr>
<tr>
<td>Cost</td>
<td><input type="text" name="cost"></td>
</tr>
<tr>
<td>BHK</td>
<td><input type="text" name="bhk"></td>
</tr>
<tr>
<td>
<input type="submit" value="submit"/>
</table>



</form>

</body>
</html>