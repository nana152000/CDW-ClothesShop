package clothesShop.repository;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtils {
	static String sender = "nguyenthigiang1224@gmail.com";
	static String host = "smtp.gmail.com";
	static String password = "ctdsdavwbuihslmf";

	public static boolean sendEmail(String recipient, String subject, String content) {
		Properties properties = System.getProperties();

		// Setup mail server
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");
		// submit
		// Vô service
		// generate pass
		// Update pasword cua user
		// send password to mail

		Session session = Session.getInstance(properties, new javax.mail.Authenticator() {

			protected PasswordAuthentication getPasswordAuthentication() {

				return new PasswordAuthentication(sender, password);

			}

		});
		try {
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(sender));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
			message.setSubject(subject);
//            message.setContent(content);
			message.setText(content);

			System.out.println("sending...");
			Transport.send(message);
			System.out.println("Sent message successfully....");
			return true;
		} catch (MessagingException mex) {
			mex.printStackTrace();
			return false;
		}

	}

	public static void main(String[] args) {
		EmailUtils.sendEmail("18130061@st.hcmuaf.edu.vn", "Hello you", "So you think you can dance");

	}

}
