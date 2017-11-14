
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
<form name="getDetail" action="deleteAgent.jsp">
<%
Session hibersession=(Session)application.getAttribute("hibersession");

Query query=hibersession.getNamedQuery("getAgentDetails");
String user=request.getParameter("name");
System.out.println(user);
application.setAttribute("email", user);
session=request.getSession();
session.setAttribute("agentName", user);
query.setString("name", user);
Iterator<AgentPojo>iter=query.list().iterator();
while(iter.hasNext())
{
	AgentPojo objAgent=iter.next();
%>
Name:<%=objAgent.getName()%><br/>
Address:<%=objAgent.getAddress()%><br/>
Country:<%=objAgent.getCountry()%><br/>
City:<%=objAgent.getCity()%><br/>
Locality:<%=objAgent.getLocality()%><br/>
Specialise In:<%=objAgent.getSpecialiseIn()%><br/>
Website:<%=objAgent.getWebsite()%><br/>
Email:<%=objAgent.getEmail()%><br/>
Password:<%=objAgent.getPassword()%><br/>
Contact No:<%=objAgent.getContactNo()%><br/>
<%
session=request.getSession();
session.setAttribute("email", objAgent.getEmail());
session.getAttribute("email");
}


%>
<input type="submit" value="delete record">
</form>
</body>
</html>