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
String user=request.getParameter("name");
System.out.println(user);
Query query=hibersession.getNamedQuery("getBuilderDetails");
query.setString("name", user);
application.setAttribute("name", user);
session=request.getSession();
session.setAttribute("agentName", user);

Iterator<BuilderPojo>iter=query.list().iterator();
while(iter.hasNext())
{
	BuilderPojo objBuilder=iter.next();
%>
Name:<%=objBuilder.getName()%><br/>
Address:<%=objBuilder.getAddress()%><br/>
Country:<%=objBuilder.getCountry()%><br/>
City:<%=objBuilder.getCity()%><br/>
Website:<%=objBuilder.getWebsite()%><br/>
Email:<%=objBuilder.getEmail()%><br/>
Password:<%=objBuilder.getPassword()%><br/>
Contact No:<%=objBuilder.getContactNo()%><br/>
<%
session=request.getSession();
session.setAttribute("email", objBuilder.getEmail());
session.getAttribute("email");
}
%>
<input type="submit" value="delete record">
</form>
</body>
</html>