<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ page import="org.hibernate.Session" %>
    <%@ page import="org.hibernate.SessionFactory" %>
    <%@ page import="org.hibernate.cfg.Configuration" %>
    <%@ page import="org.hibernate.Transaction" %>
    <%@ page import="online.hibernate.*" %>
      <%@ page import="org.hibernate.Query" %>
   <%@page import= "java.util.Iterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp" />
  
<br>


<form name="getDetail" action="delete.jsp">
<%
	Session hibersession=(Session)application.getAttribute("hibersession");

Query query=hibersession.getNamedQuery("getindividualDetails");
String user=request.getParameter("name");
System.out.println(user);
application.setAttribute("name", user);
session=request.getSession();
session.setAttribute("agentName", user);
query.setString("name", user);
Iterator<IndividualPojo>iter=query.list().iterator();
while(iter.hasNext())
{
	IndividualPojo objindi=iter.next();
%>
Name:<%=objindi.getName()%><br/>
Gender:<%=objindi.getGender()%><br/>
Country:<%=objindi.getCountry()%><br/>
City:<%=objindi.getCity()%><br/>



Email:<%=objindi.getEmail()%><br/>
Password:<%=objindi.getPassword()%><br/>
Contact No:<%=objindi.getContactNo()%><br/>
<%
}
%>
<input type="submit" value="delete record">
</form>




</body>
</html>