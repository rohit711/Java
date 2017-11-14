<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts.tld" prefix="html" %>
    <%@ page import="org.hibernate.SessionFactory"%>
    <%@ page import="org.hibernate.Session"%>
    <%@ page import="org.hibernate.cfg.Configuration"%>
    <%@ page import="org.hibernate.Transaction"%>
    <%@ page import="org.hibernate.Session"%>
   <%@ page import="org.hibernate.Query" %>
   <%@page import= "java.util.Iterator" %>
   <%@page import="online.hibernate.Locality" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Advance Search</title>
<script type="text/javascript">

function showCity(str)
{
var xmlhttp;
if (str=="")
  {
  document.getElementById("txtHint").innerHTML="";
  return;
  }
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("txtHint").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","GetCity?state="+str,true);
xmlhttp.send();
}

</script>
</head>
<body>

<h1> Advance Search    </h1>

<jsp:include page="header.jsp" />
  
<br>
hello:   <%=session.getAttribute("email") %>
<html:form action="Search.real">
<table align="left">
<tr colspan=4>
<td>Transaction Type<font color="red">*</font></td>
<td><html:radio property="transactionType" value="Buy">Buy</html:radio></td>
<td><html:radio property="transactionType" value="Lease">Lease</html:radio></td>
<td><html:errors property="transactionType"/></td>
</tr>
<tr colspan=3>
<td>Property Type<font color="red">*</font></td>
<td><html:select property="propertyType">
<html:option value="">Residential</html:option>
<html:option value="Apartment">Apartment</html:option>
<html:option value="FarmHouse">Farm House</html:option>
<html:option value="Land">Land</html:option>
<html:option value="">Commercial</html:option>
<html:option value="Office">Office</html:option>
<html:option value="Showroom">Showroom</html:option>
</html:select>
</td>
<td><html:errors property="propertyType"/></td></tr>
<tr colspan=3>
<td>City<font color="red">*</font></td>
<td><html:select property="city" ><!-- onchange="showCity(this.value)"> -->
<html:option value="">City</html:option>
<html:option value="Mumbai"></html:option>
<html:option value="Pune"></html:option>
</html:select>
</td>
<td><html:errors property="city"/></td>
</tr>
<tr>
<td>Locality</td>
<td><html:select property="locality">
<<%-- html:option value="Akurdi">Akurdi</html:option>
<html:option value="Pimpri">Pimpri</html:option> --%>


<!-- <div id="txtHint"/> -->
<% 
 SessionFactory factory =null;
Session hiberSession=null;
Transaction tx=null;
//String city1=request.getParameter("city");
Configuration cfg=new Configuration();
cfg.configure("hibernate.cfg.xml");
factory=cfg.buildSessionFactory();
hiberSession =factory.openSession();
Query query=hiberSession.getNamedQuery("getLocality");
/* query.setString("city", city1); */

 
Iterator <Locality> iter=query.list().iterator(); 
 while(iter.hasNext())
{
	Locality area=iter.next(); 
	 
%>
 <%System.out.println(area.getLocality()); %>
 <html:option value='<%=area.getLocality()%>'><%=area.getLocality()%> </html:option>

<%
}
 
 
%>
 </html:select>
</td>
</tr>
<tr colspan=4>


<td>Min Budget </td>
<td>
<html:select property="minBudget">
<html:option value="1000000">10 lakhs</html:option>
<html:option value="2000000">20 lakhs</html:option>
<html:option value="3000000">30 lakhs</html:option>
<html:option value="4000000">40 lakhs</html:option>
</html:select>
</td>

<td>Max Budget</td>
<td> <html:select property="maxBudget">
<html:option value="2000000">20 lakhs</html:option>
<html:option value="3000000">30 lakhs</html:option>
<html:option value="4000000">40 lakhs</html:option>
<html:option value="5000000">50 lakhs</html:option>
</html:select>
</td>
</tr>
<tr>
<td>min bedroom</td>
<td> <html:select property="bhk">
<html:option value="1">1</html:option>
<html:option value="2">2</html:option>
<html:option value="3">3</html:option>
<html:option value="4">4</html:option>
</html:select>
</td>
</tr>
<%-- <tr>
<td>Minimum Area</td>
<td><html:text property="minArea"/></td>
</tr>
<tr>
<td>Minimum Price</td>
<td><html:text property="minPrice"/></td>
</tr>
<tr>
<td></td> --%>
<td><html:submit/></td>
</table>
<table align="center">
<tr>
<td>
<a href="emi.html">Click here to Calculate the EMI</a>
</table>
</html:form>

</body>
</html>