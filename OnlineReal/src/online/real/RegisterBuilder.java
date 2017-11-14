package online.real;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import online.hibernate.AgentPojo;
import online.hibernate.BuilderPojo;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.DynaValidatorForm;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class RegisterBuilder extends Action 
{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception 
			{
		String result="failure";
		DynaValidatorForm frm=(DynaValidatorForm)form;
	
		
       try {
			BeanUtils bean=new BeanUtils();
			
			//SessionFactory sf=HibernateSessionFactory.getSessionFactory();
			Configuration cfg=new Configuration().configure();
			
			SessionFactory sf=cfg.buildSessionFactory();
			
			Session session=sf.openSession();
			
			Transaction tx=session.beginTransaction();
			
			BuilderPojo builder=new BuilderPojo();
			bean.copyProperties(builder, frm);
			if(result=="failure")
			{
				session.save(builder);
			
				tx.commit();
				result="success";
				System.out.println("Data Inserted");
				
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
    		   
	 return mapping.findForward(result);
		
	
	}
	
}
