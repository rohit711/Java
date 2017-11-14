

/*import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

*/
import java.util.Date;
	import java.util.Properties;
	import javax.activation.DataHandler;
	import javax.activation.FileDataSource;
	import javax.mail.Message;
	import javax.mail.MessagingException;
	import javax.mail.Multipart;
	import javax.mail.Session;
	import javax.mail.Transport;
	import javax.mail.internet.InternetAddress;
	import javax.mail.internet.MimeBodyPart;
	import javax.mail.internet.MimeMessage;
	import javax.mail.internet.MimeMultipart;

public class Entry 
{


	  
	    
	    public void sendEmail(String to, String subject,String bodyText) 
	    {
	        String from = "pbnahate@gmail.com";
	        //String filename = "d:\\student.xls";
	        
	        Properties properties = new Properties();
	        properties.put("mail.smtp.host", "smtp.gmail.com");
	        properties.setProperty("mail.smtp.auth", "true");
			//props.setProperty("mail.smtp.starttls.enable","true");
	        properties.setProperty("mail.smtp.socketFactory.port", "465");
	        properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	       // properties.put("mail.smtp.port", "465");
	        Session objSession=Session.getInstance(properties, new MailPasswordAuthenticator());
		       //Session obj=Session.getInstance(properties,new MailPasswordAuthenticator());
	        
	        try {
	            MimeMessage message = new MimeMessage(objSession);
	            message.setFrom(new InternetAddress(from));
	            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
	            message.setSubject(subject);
	            message.setSentDate(new Date());
	            
	            //
	            // Set the email message text.
	            //
	            MimeBodyPart messagePart = new MimeBodyPart();
	            messagePart.setText(bodyText);
	            
	            //
	            // Set the email attachment file
	            //
	            /*MimeBodyPart attachmentPart = new MimeBodyPart();
	            FileDataSource fileDataSource = new FileDataSource(filename) {
	                @Override
	                public String getContentType() {
	                    return "application/octet-stream";
	                }
	            };
	            attachmentPart.setDataHandler(new DataHandler(fileDataSource));
	            attachmentPart.setFileName("student.xls");*/
	            
	            Multipart multipart = new MimeMultipart();
	            multipart.addBodyPart(messagePart);
	           // multipart.addBodyPart(attachmentPart);
	            
	            message.setContent(multipart);
	            
	            Transport.send(message);
	            System.out.println("mail sent");
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	    }
	

}
