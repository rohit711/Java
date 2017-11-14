<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import= "online.hibernate.PojoApp" %>
     <%@page import= "online.hibernate.ShowroomPojo" %>
     <%@page import= "online.hibernate.PojoOffice" %>
     <%@page import= "online.hibernate.PojoFarmHouse" %>
     <%@page import= "online.hibernate.PojoLand" %>
     <%@page import="java.util.ArrayList" %>
      <%@page import="java.util.Iterator" %>
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
session=request.getSession(false);
ArrayList<PojoApp> objArr=null;
ArrayList<PojoOffice> objOffice=null;
ArrayList<ShowroomPojo> objShowRoom=null;
ArrayList<PojoLand> objLand=null;
ArrayList<PojoFarmHouse> objFarmHouse=null;
if(session!=null)
{
	System.out.println("not null");
if(session.getAttribute("obj")!=null)	
{
 objArr=(ArrayList)session.getAttribute("obj");

Iterator<PojoApp> iter=objArr.iterator();
%>
<table>
<% 
while(iter.hasNext())
{
PojoApp data=iter.next();

%>
<tr><td>flat no:</td><td><%=data.getFlatNo() %><br/></td></tr>
<tr><td>Locality:</td><td><%=data.getArea() %><br/></td></tr>
<tr><td>ApartmentName:</td><td><%=data.getApartmentName() %><br/></td></tr>
<tr><td>Bhk:<%=data.getBhk() %><br/></tr></td>
<tr><td>Area:<%=data.getArea() %><br/></tr></td>
<br/>
<br/>
<%}

}
%>
</table>
<% 

if(session.getAttribute("objOffice")!=null)	
{
	System.out.println("office");
	objOffice=(ArrayList)session.getAttribute("objOffice");

Iterator<PojoOffice> iter=objOffice.iterator();
%>
<table>
<% 
while(iter.hasNext())
{
PojoOffice data=iter.next();

%>
<tr><td>plot no:<%=data.getPlotNo() %><br/></tr></td>
<tr><td>Locality:<%=data.getLocality() %><br/></tr></td>
<tr><td>Area:<%=data.getArea() %><br/></tr></td>
<tr><td>Cost:<%=data.getCost() %><br/></tr></td>


<%}
}
%>
</table>
<%
//farmhouse
if(session.getAttribute("farmhouse")!=null)	
{
	System.out.println("farmhouse");
	objFarmHouse=(ArrayList)session.getAttribute("farmhouse");

Iterator<PojoFarmHouse> iter=objFarmHouse.iterator();
%>
<table>
<% 
while(iter.hasNext())
{
	PojoFarmHouse data=iter.next();

%>
<tr><td>plot no:<%=data.getPlotNo() %><br/></tr></td>
<tr><td>Locality:<%=data.getLocality() %><br/></tr></td>
<tr><td>Area:<%=data.getArea() %><br/></tr></td>
<tr><td>Cost:<%=data.getCost() %><br/></tr></td>



<%}
}
%>
</table>
<% 


//showroom

if(session.getAttribute("showroom")!=null)	
{
	System.out.println("showroom");
	objShowRoom=(ArrayList)session.getAttribute("showroom");

Iterator<ShowroomPojo> iter=objShowRoom.iterator();
%>
<table>
<% 
while(iter.hasNext())
{
	ShowroomPojo data=iter.next();

%>
<tr><td>plot no:<%=data.getPlotNo() %><br/></tr></td>
<tr><td>Locality:<%=data.getLocality() %><br/></tr></td>
<tr><td>Area:<%=data.getArea() %><br/></tr></td>
<tr><td>Cost:<%=data.getCost() %><br/></tr></td>


<%}
}
%>
</table>
<%
//land

if(session.getAttribute("land")!=null)	
{
	System.out.println("land");
	objLand=(ArrayList)session.getAttribute("land");

Iterator<PojoLand> iter=objLand.iterator();
%>
<table>
<%
while(iter.hasNext())
{
	PojoLand data=iter.next();

%>
<tr><td>plot no:<%=data.getPlotNo() %><br/></tr></td>
<tr><td>Locality:<%=data.getLocality() %><br/></tr></td>
<tr><td>Area:<%=data.getArea() %><br/></tr></td>
<tr><td>Cost:<%=data.getCost() %><br/></tr></td>

<%}
}
%>
</table>
<% 

}%>
</body>
</html>