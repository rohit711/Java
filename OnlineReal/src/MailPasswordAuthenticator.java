

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;




public class MailPasswordAuthenticator extends Authenticator 
{
	@Override
	protected PasswordAuthentication getPasswordAuthentication()
	{  
		return new  PasswordAuthentication("pbnahate@gmail.com","monamonu");
	}
}
