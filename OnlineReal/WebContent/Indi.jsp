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
<% 
SessionFactory factory =null;
Session hibersession=null;
Transaction tx=null;

Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
factory=cfg.buildSessionFactory();
hibersession=factory.openSession();
application.setAttribute("factory", factory);
application.setAttribute("hibersession", hibersession);
%>



<form action="getIndividualDetail.jsp">
<select name="name" >
<% 
System.out.println("point 1");
Query query=hibersession.getNamedQuery("getIndividualnames"); 


System.out.println("point 2");
Iterator<IndividualPojo>iter=query.list().iterator();
System.out.println("after query");
while(iter.hasNext())
{	System.out.println("in while");
	IndividualPojo objindividualPojo=iter.next();
	System.out.println(objindividualPojo.getName());
%>
 <option value='<%=objindividualPojo.getName()%>'><br/> <%=objindividualPojo.getName().toUpperCase()%></option> 

<%
}
%>
</select>
<input type="submit"/>
</form>
</body>
</html>