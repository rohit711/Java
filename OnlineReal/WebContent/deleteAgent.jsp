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
<%
Session hibersession=(Session)application.getAttribute("hibersession");
Transaction tx=hibersession.beginTransaction();
String user=(String)application.getAttribute("name");
session=request.getSession(false);
{
	System.out.println("session not set");
}
String email=(String)session.getAttribute("email");
System.out.println("email"+email);
Query query=hibersession.getNamedQuery("deleteAgentDetails");
query.setString("email",email);

int rowCount = query.executeUpdate();
tx.commit();
%>
</body>
</html>