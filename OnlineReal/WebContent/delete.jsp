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
Query query=hibersession.getNamedQuery("deleteBuilderDetails");
query.setString("email",email);

int rowCount = query.executeUpdate();
tx.commit();
 /* String user=(String)application.getAttribute("name");
System.out.println(user);
Query query=hibersession.getNamedQuery("getBuildernames");
String hql = "delete from BuilderPojo where name = :name";
Query query = hibersession.createQuery(hql); */ 

System.out.println("Rows affected: " + rowCount);

%>
<%-- 
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
}
%> --%>





Record is deleted!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
</body>
</html>


