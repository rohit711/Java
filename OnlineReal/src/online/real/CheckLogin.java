package online.real;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

public class CheckLogin extends Action
{
	String individualdb,agentdb,builderdb;
	Connection connection=null;
	PreparedStatement psSelect=null;
	ResultSet result=null;
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception
	{
		HttpSession session=request.getSession();
		String result1="failure";
		DynaActionForm frm=(DynaActionForm)form;
		String email=frm.getString("email");
		String password=frm.getString("password");
		String Utype=frm.getString("type");
		System.out.println(Utype);
		
		
		if(Utype.equalsIgnoreCase("Builder"))
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		connection=DriverManager.getConnection("jdbc:oracle:thin:@172.25.12.1:1521:oracle11","user88","gauravpratik");
		
		psSelect=connection.prepareStatement("select * from builderdb where email=? and password=?");
		
		
		
		psSelect.setString(1,email);
		psSelect.setString(2,password);
		result=psSelect.executeQuery();
		}	
		
		
		if(Utype.equalsIgnoreCase("agent"))
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		connection=DriverManager.getConnection("jdbc:oracle:thin:@172.25.12.1:1521:oracle11","user88","gauravpratik");
		
		psSelect=connection.prepareStatement("select * from agentdb where email=? and password=?");
		
		
		
		psSelect.setString(1,email);
		psSelect.setString(2,password);
		result=psSelect.executeQuery();
		}	
		
		
		if(Utype.equalsIgnoreCase("individual"))
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		connection=DriverManager.getConnection("jdbc:oracle:thin:@172.25.12.1:1521:oracle11","user88","gauravpratik");
		
		psSelect=connection.prepareStatement("select * from individualdb where email=? and password=?");
		
		
		
		psSelect.setString(1,email);
		psSelect.setString(2,password);
		result=psSelect.executeQuery();
		}
		while(result.next())
		{
			session.setAttribute("email",email);
			result1="success";
		}
		return mapping.findForward(result1);
	}
	
}
