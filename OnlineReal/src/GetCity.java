

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class GetCity extends HttpServlet
{
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		
		PrintWriter out=response.getWriter();
		String str=request.getParameter("state");
		out.println("<html:select property='locality'>");
		if(str.equalsIgnoreCase("Mumbai"))
		{
		
			out.println("<html:option value='dadar'>dadar</html:option>");
			out.println("<html:option value='juhu'>juhu</html:option>");
		}
		else if(str.equalsIgnoreCase("Pune"))
		{
			out.println("<html:option value='Akurdi'>Akurdi</html:option>");
			out.println("<html:option value='pimpri'>pimpri</html:option>");
		}
		
		out.println("</html:select>");
		}
		
		
	}

