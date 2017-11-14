<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="org.hibernate.Session" %>
    <%@ page import="org.hibernate.SessionFactory" %>
    <%@ page import="org.hibernate.cfg.Configuration" %>
    <%@ page import="org.hibernate.Transaction" %>
    <%@ page import="online.hibernate.*" %>
      <%@ page import="org.hibernate.Query" %>
   <%@page import= "java.util.Iterator" %>
   <%@page import= "online.hibernate.PojoApp" %>
   <%@page import= "online.hibernate.PojoOffice" %>
   <%@page import= "online.hibernate.PojoFarmHouse" %>
   <%@page import= "online.hibernate.ShowroomPojo" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% 
Configuration cfg=new Configuration().configure();

SessionFactory sf=cfg.buildSessionFactory();

Session hiberSession=sf.openSession();

Transaction tx=hiberSession.beginTransaction();

String type=request.getParameter("type");


if(type.equalsIgnoreCase("Apartment"))
{
 String flatNo=request.getParameter("flatNo");
 int cost=Integer.parseInt(request.getParameter("cost"));
 int bhk=Integer.parseInt(request.getParameter("bhk"));
 String apartmentName=request.getParameter("apartmentName");
 String locality=request.getParameter("locality");
 
 PojoApp objApp=new PojoApp();
 objApp.setApartmentName(apartmentName);
 objApp.setArea(locality);
 objApp.setBhk(bhk);
 objApp.setCost(cost);
 objApp.setFlatNo(flatNo);
 
 hiberSession.save(objApp);
	
	tx.commit();

	System.out.println("Data Inserted");
	if(hiberSession!=null)
		hiberSession.close();
} 


if(type.equalsIgnoreCase("Office"))
{
 String plotNo=request.getParameter("plotNo");
 int cost=Integer.parseInt(request.getParameter("cost"));
 String locality=request.getParameter("locality,");
 String area= request.getParameter("area");
 System.out.println(area);
 
 System.out.println("point 1");
 PojoOffice objOffice=new PojoOffice();
 System.out.println("point 2");
 objOffice.setArea(area);
 objOffice.setLocality(locality);
 objOffice.setCost(cost);
 objOffice.setPlotNo(plotNo);
 
 hiberSession=sf.openSession();
 
 tx=hiberSession.beginTransaction();

 hiberSession.save(objOffice);
 
	tx.commit();
	System.out.println("point 5");
	System.out.println("Data Inserted");
} 


if(type.equalsIgnoreCase("land"))
{
	System.out.println("land");
	String plotNo=request.getParameter("plotNo");
	 int cost=Integer.parseInt(request.getParameter("cost"));
	 String locality=request.getParameter("locality");
	 String area= request.getParameter("area");
	 
	 
	 PojoLand objLand=new PojoLand();
	 
	 objLand.setPlotNo(plotNo);
	 
	 hiberSession.save(objLand);
		
		tx.commit();

		System.out.println("Data Inserted");
} 
if(type.equalsIgnoreCase("farmHouse"))
{
	String plotNo=request.getParameter("plotNo");
	 int cost=Integer.parseInt(request.getParameter("cost"));
	 String locality=request.getParameter("locality");
	 String area= request.getParameter("area");
	 
	 
	 PojoFarmHouse objFarmHouse=new PojoFarmHouse();
	 objFarmHouse.setArea(area);
	 objFarmHouse.setLocality(locality);
	 objFarmHouse.setCost(cost);
	 objFarmHouse.setPlotNo(plotNo);
	 
	 hiberSession.save(objFarmHouse);
		
		tx.commit();

		System.out.println("Data Inserted");
} 
if(type.equalsIgnoreCase("showroom"))
{
	String plotNo=request.getParameter("plotNo");
	 int cost=Integer.parseInt(request.getParameter("cost"));
	 String locality=request.getParameter("locality");
	 String area= request.getParameter("area");
	 
	 
	 ShowroomPojo objShowroom=new ShowroomPojo();
	 objShowroom.setArea(area);
	 objShowroom.setLocality(locality);
	 objShowroom.setCost(cost);
	 objShowroom.setPlotNo(plotNo);
	 
	 hiberSession.save(objShowroom);
		
		tx.commit();

		System.out.println("Data Inserted");
} 


%>


</body>
</html>