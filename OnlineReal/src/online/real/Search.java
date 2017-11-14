package online.real;

import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import online.hibernate.PojoApp;
import online.hibernate.PojoFarmHouse;
import online.hibernate.PojoLand;
import online.hibernate.PojoOffice;
import online.hibernate.ShowroomPojo;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.DynaValidatorForm;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class Search extends Action {

	String transactionType,propertyType,city,locality;
	int minBudget,maxBudget,bhk;
	Configuration cfg;
	SessionFactory sf;
	Session session;
	Transaction tx;
	
	
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		
		 cfg=new Configuration().configure("hibernate.cfg.xml");
			
		 sf=cfg.buildSessionFactory();
		
		 session=sf.openSession();
		
		 tx=session.beginTransaction();
		  
		tx.begin();
		
		
		String result="failure";
		DynaValidatorForm dataFrm=(DynaValidatorForm)form;
		System.out.println("execute");
		
		
		if(dataFrm.getString("propertyType").equalsIgnoreCase("Apartment"))

		{  
			System.out.println("in equals");
	   locality=dataFrm.getString("locality");
	   minBudget=Integer.parseInt(dataFrm.getString("minBudget"));
	   maxBudget=Integer.parseInt(dataFrm.getString("maxBudget"));
	   System.out.println(minBudget);
	   System.out.println(locality);
	   PojoApp objApp=new PojoApp();
	   objApp.setArea(locality);
			
		
		//Query query=session.createQuery("from PojoApp app where app.area=objApp.getArea()");
		Query query=session.getNamedQuery("getDetails");
		query.setString("locality",locality);
		System.out.println("param set");
		query.setInteger("minBudget", minBudget);
		query.setInteger("maxBudget", maxBudget);
		Iterator<PojoApp> iter=query.list().iterator();
		System.out.println("Iterator");
		int count=0;
		ArrayList<PojoApp> arrProp=new ArrayList();
		
		while(iter.hasNext())
		{
			
				
			result="success";	
			System.out.println("in while loop");
			PojoApp data=iter.next();
		    arrProp.add(count, data);
		
			HttpSession session=request.getSession(true);
			session.setAttribute("obj", arrProp);
			
		
			
			System.out.println(data.getApartmentName());
			System.out.println(data.getArea());
            count++;
			
		}
		
		}
		//office
		if(dataFrm.getString("propertyType").equalsIgnoreCase("Office"))

		{  
	   locality=dataFrm.getString("locality");
	   minBudget=Integer.parseInt(dataFrm.getString("minBudget"));
	   maxBudget=Integer.parseInt(dataFrm.getString("maxBudget"));
	   ArrayList<PojoOffice> arrProp=new ArrayList();
		Query query=session.getNamedQuery("getOfficeDetails");
		query.setString("locality",locality);
		query.setInteger("minBudget", minBudget);
		query.setInteger("maxBudget", maxBudget);
		int count=0;
		Iterator<PojoOffice> iter=query.list().iterator();		
		while(iter.hasNext())
		{
			result="success";	
			System.out.println("in while loop");
			PojoOffice data=iter.next();
			arrProp.add(count, data);
			
			HttpSession session=request.getSession(true);
			session.setAttribute("objOffice", arrProp);
			
			
			
			System.out.println(data.getArea());
			System.out.println(data.getLocality());
			System.out.println(data.getCost());
			System.out.println(data.getPlotNo());		
			count++;
		}
		
	}
		//showroom
		if(dataFrm.getString("propertyType").equalsIgnoreCase("Showroom"))

		{  
			System.out.println("in equals");
	   locality=dataFrm.getString("locality");
	   minBudget=Integer.parseInt(dataFrm.getString("minBudget"));
	   maxBudget=Integer.parseInt(dataFrm.getString("maxBudget"));
	   System.out.println(minBudget);
	   System.out.println(locality);
	   PojoOffice objOffice=new PojoOffice();
	   objOffice.setArea(locality);
			ArrayList<ShowroomPojo> arrSroom=new ArrayList();
		
		//Query query=session.createQuery("from PojoApp app where app.area=objApp.getArea()");
		Query query=session.getNamedQuery("getShowroomDetails");
		query.setString("locality",locality);
		System.out.println("param set");
		query.setInteger("minBudget", minBudget);
		query.setInteger("maxBudget", maxBudget);
		System.out.println(maxBudget);
		Iterator<ShowroomPojo> iter=query.list().iterator();		
		while(iter.hasNext())
		{
			result="success";	
			System.out.println("in while loop");
			ShowroomPojo data=iter.next();
			arrSroom.add(data);
			HttpSession session=request.getSession(true);
			session.setAttribute("showroom", arrSroom);
			System.out.println(data.getArea());
			System.out.println(data.getLocality());
			System.out.println(data.getCost());
			System.out.println(data.getPlotNo());

			
		}
		
	}
		//farmhouse
		if(dataFrm.getString("propertyType").equalsIgnoreCase("FarmHouse"))

		{  
	   locality=dataFrm.getString("locality");
	   minBudget=Integer.parseInt(dataFrm.getString("minBudget"));
	   maxBudget=Integer.parseInt(dataFrm.getString("maxBudget"));

		Query query=session.getNamedQuery("getFarmHouseDetails");
		query.setString("locality",locality);
		query.setInteger("minBudget", minBudget);
		query.setInteger("maxBudget", maxBudget);
		
		ArrayList<PojoFarmHouse> arrSroom=new ArrayList();
		Iterator<PojoFarmHouse> iter=query.list().iterator();		
		while(iter.hasNext())
		{
			result="success";	
			System.out.println("in while loop");
			PojoFarmHouse data=iter.next();
			arrSroom.add(data);
			HttpSession session=request.getSession(true);
			session.setAttribute("farmhouse",arrSroom );
			System.out.println(data.getArea());
			System.out.println(data.getLocality());
			System.out.println(data.getCost());
			System.out.println(data.getPlotNo());

			
		}
		}
		//land
		if(dataFrm.getString("propertyType").equalsIgnoreCase("Land"))

		{  
			System.out.println("in equals");
	   locality=dataFrm.getString("locality");
	   minBudget=Integer.parseInt(dataFrm.getString("minBudget"));
	   maxBudget=Integer.parseInt(dataFrm.getString("maxBudget"));
	   System.out.println(minBudget);
	   System.out.println(locality);
	   PojoOffice objOffice=new PojoOffice();
	   objOffice.setArea(locality);
			
		
	   
		//Query query=session.createQuery("from PojoApp app where app.area=objApp.getArea()");
		Query query=session.getNamedQuery("getLandDetails");
		query.setString("locality",locality);
		System.out.println("param set");
		query.setInteger("minBudget", minBudget);
		query.setInteger("maxBudget", maxBudget);
		System.out.println(maxBudget);
		ArrayList<PojoLand> arrSroom=new ArrayList();
		Iterator<PojoLand> iter=query.list().iterator();		
		while(iter.hasNext())
		{
			result="success";	
			System.out.println("in while loop");
			PojoLand data=iter.next();
			arrSroom.add(data);
			HttpSession session=request.getSession(true);
			session.setAttribute("land",arrSroom);
			System.out.println(data.getArea());
			System.out.println(data.getLocality());
			System.out.println(data.getCost());
			System.out.println(data.getPlotNo());

			
		}
		
	}
		
		
		
		
		
		return mapping.findForward(result);
	}
	
	
	

}
