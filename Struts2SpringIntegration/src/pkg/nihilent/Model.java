package pkg.nihilent;

import com.opensymphony.xwork2.ActionSupport;

public class Model extends ActionSupport
{ 
	String message;

	public void setMessage(String message) {
		this.message = message;
	}

	public String getMessage() {
		return message;
	}

	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		return "success";
	}
	

}
