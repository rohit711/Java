<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<form name="BuilderProperty" action="InsertDB">
Choose the Type<select name="details">
<option value="Apartment">apartment</option>
<option value="farmHouse">FarmHouse</option>
<option value="Office">Office</option>
<option value="farmHouse">Showroom</option>
</select><br/>

Plot No:<input type="text" name="plotNo"/><br/>
Locality<input type="text" name="locality"/><br/>
Area<input type="text" name="area"/><br/>
Cost<input type="text" name="cost" /><br/>
<input type="submit" value="insert"/>


</form>

</body>
</html>