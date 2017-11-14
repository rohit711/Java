
public class hello {

	/**
	 * @param args
	 */
	public static void main(String[] args)
	{
		String email="saurabhsrule@gmail.com";
		//String password=request.getParameter("password");
		String msg="This Message contains Your Emailid="+email+"This is to inform you that u r succesfully registered with our Online Real State Agency Site for further queries contact 9561903391";
		Entry mail=new Entry();
		mail.sendEmail(email, "Online Real Estate Agency", msg);


	}

}
