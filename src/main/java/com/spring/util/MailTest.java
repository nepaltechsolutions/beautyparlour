package com.spring.util;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailTest {

	public static void main(String[] args) throws AddressException, MessagingException {
		// TODO Auto-generated method stub
		sendPlainTextEmail();
	}
	
	public static void sendPlainTextEmail() throws AddressException, MessagingException {

		// sets SMTP server properties
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");

		properties.put("mail.smtp.starttls.enable", "true");

		properties.setProperty("mail.transport.protocol", "smtp");
		properties.put("mail.smtp.starttls.enable", "true");

		properties.put("mail.smtp.debug", "true");
		properties.put("mail.smtp.socketFactory.port", "587");
		properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.socketFactory.fallback", "true");

		// *** BEGIN CHANGE

		// creates a new session, no Authenticator (will connect() later)
		Session session = Session.getDefaultInstance(properties);
		// *** END CHANGE

		// creates a new e-mail message
		Message msg = new MimeMessage(session);

		msg.setFrom(new InternetAddress("rhazkoomar@gmail.com"));
		InternetAddress[] toAddresses = { new InternetAddress("rhazkoomar@hotmail.com") };
		msg.setRecipients(Message.RecipientType.TO, toAddresses);
		msg.setSubject("hi");
		msg.setSentDate(new Date());
		// set plain text message
		msg.setText("how are yoiu");

		// *** BEGIN CHANGE
		// sends the e-mail
		Transport t = session.getTransport("smtp");
		t.connect("smtp.gmail.com", 587, "rhazkoomar@gmail.com", "password here");
		System.out.println("post message==>");
		t.sendMessage(msg, msg.getAllRecipients());

		t.close();
		// *** END CHANGE

	}


}
