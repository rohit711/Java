package online.real;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.DynaValidatorForm;

public class AdminLoginDetail extends Action
{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		  
		
		String result="failure";
		DynaValidatorForm dataFrm=(DynaValidatorForm)form;
		System.out.println("Hello");
		if(dataFrm.getString("name").equals("admin") && dataFrm.getString("password").equals("admin"))
		{
			result="success";
		}
		return mapping.findForward(result);
	}
 
}
