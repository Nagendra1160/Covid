package cov.EmailOtp;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class EmailUtility {

	
	//static String content=String.valueOf(OtpGeneration.Otp());
	static String from = "nagendrathoram1160@gmail.com";
	static String host = "smtp.gmail.com";
	 static String port="465";
	public static  void send(String rec,String content) throws UnsupportedEncodingException
	{
		    Properties properties = System.getProperties();
		    properties.put("mail.smtp.host", host);
	        properties.put("mail.smtp.port", port);
	        properties.put("mail.smtp.ssl.enable", "true");
	        properties.put("mail.smtp.auth", "true");
		 
	        
	        Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

	            protected PasswordAuthentication getPasswordAuthentication() {

	                return new PasswordAuthentication(from, "Nagendra$1156");

	            }

	        });
	        
	        session.setDebug(true);
           
	        try {
	            // Create a default MimeMessage object.
	            MimeMessage message = new MimeMessage(session);

	            // Set From: header field of the header.
	            message.setFrom(new InternetAddress(from,"Nagendra"));

	            // Set To: header field of the header.
	            message.addRecipient(Message.RecipientType.TO, new InternetAddress(rec));

	            // Set Subject: header field
	            message.setSubject("Account Authentication");

	            // Now set the actual message
	            message.setText(content);

	            System.out.println("sending...");
	            // Send message
	            Transport.send(message);
	            System.out.println("Sent message successfully....");
	        } catch (MessagingException mex) {
	            mex.printStackTrace();
	        }

	    
	}
	public static void main(String[] args)
	{}
}
