/*
 * Created on Feb 9, 2006
 *
 * Window - Preferences - Java - Code Style - Code Templates
 */
package com.nav.commons.mail;

import java.util.Properties;
import java.util.ResourceBundle;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.log4j.Logger;

import com.cme.fiftyp.constants.Constants;

/**
 * @author Maher
 * 
 * Thread which will run and send an email called by the EmailService class
 */
public class EmailServiceThread extends Thread
{

   static Logger log = Logger.getLogger(EmailServiceThread.class);

   public static String SMTP_SERVER;

   public static String X_MAILER;

   public static String AUTH_USER;

   public static String AUTH_PWD;

   public static String SMTP_PORT;

   public static boolean USE_SSL;

   public static String FIFTYP_REQUEST_USER;

   public static String FIFTYP_MESSAGE_USER;

   private String senderAddress;

   private String senderName;

   private String[] recipientAddress;

   private String[] recipientAddressCC;

   private String[] recipientAddressBCC;

   private String subject;

   private String htmlBody;

   private String textBody;

   private String[] attachment;

   private String replyAddress;

   static
   {
      readProperties();
   }

   private static void readProperties()
   {
      ResourceBundle myEmailProperties = ResourceBundle.getBundle(Constants.EMAIL_PROP_FILE, java.util.Locale.getDefault());
      SMTP_SERVER = myEmailProperties.getString(Constants.SMTP_SERVER_KEY);
      X_MAILER = myEmailProperties.getString(Constants.X_MAILER_KEY);
      AUTH_USER = myEmailProperties.getString(Constants.SMTP_AUTH_USER_KEY);
      AUTH_PWD = myEmailProperties.getString(Constants.SMTP_AUTH_PWD_KEY);
      SMTP_PORT = myEmailProperties.getString(Constants.SMTP_PORT_KEY);
      USE_SSL = myEmailProperties.getString(Constants.SMTP_USE_SSL_KEY).trim().equalsIgnoreCase("true") ? true : false;
      FIFTYP_REQUEST_USER = myEmailProperties.getString(Constants.MAIL_REQUEST_FIFTYP_USER_KEY);
      FIFTYP_MESSAGE_USER = myEmailProperties.getString(Constants.MAIL_MESSAGE_FIFTYP_USER_KEY);
   }

   public EmailServiceThread(String senderAddress, String senderName, String[] recipientAddress, String[] recipientAddressCC,
                             String[] recipientAddressBCC, String subject, String htmlBody, String textBody, String[] attachment, String replyAddress)
   {
      super();
      this.senderAddress = senderAddress;
      this.senderName = senderName;
      this.recipientAddress = recipientAddress;
      this.recipientAddressCC = recipientAddressCC;
      this.recipientAddressBCC = recipientAddressBCC;
      this.subject = subject;
      this.htmlBody = htmlBody;
      this.textBody = textBody;
      this.attachment = attachment;
      this.replyAddress = replyAddress;
   }

   /**
    * @return Returns the sMTP_SERVER.
    */
   public static String getSMTP_SERVER()
   {
      return SMTP_SERVER;
   }

   /**
    * @param smtp_server
    *            The sMTP_SERVER to set.
    */
   public static void setSMTP_SERVER(String smtp_server)
   {
      SMTP_SERVER = smtp_server;
   }

   /**
    * @return Returns the x_MAILER.
    */
   public static String getX_MAILER()
   {
      return X_MAILER;
   }

   /**
    * @param x_mailer
    *            The x_MAILER to set.
    */
   public static void setX_MAILER(String x_mailer)
   {
      X_MAILER = x_mailer;
   }

   /**
    * @return Returns the attachment.
    */
   public String[] getAttachment()
   {
      return attachment;
   }

   /**
    * @param attachment
    *            The attachment to set.
    */
   public void setAttachment(String[] attachment)
   {
      this.attachment = attachment;
   }

   /**
    * @return Returns the recipientAddress.
    */
   public String[] getRecipientAddress()
   {
      return recipientAddress;
   }

   /**
    * @param recipientAddress
    *            The recipientAddress to set.
    */
   public void setRecipientAddress(String[] recipientAddress)
   {
      this.recipientAddress = recipientAddress;
   }

   /**
    * @return Returns the recipientAddressBCC.
    */
   public String[] getRecipientAddressBCC()
   {
      return recipientAddressBCC;
   }

   /**
    * @param recipientAddressBCC
    *            The recipientAddressBCC to set.
    */
   public void setRecipientAddressBCC(String[] recipientAddressBCC)
   {
      this.recipientAddressBCC = recipientAddressBCC;
   }

   /**
    * @return Returns the recipientAddressCC.
    */
   public String[] getRecipientAddressCC()
   {
      return recipientAddressCC;
   }

   /**
    * @param recipientAddressCC
    *            The recipientAddressCC to set.
    */
   public void setRecipientAddressCC(String[] recipientAddressCC)
   {
      this.recipientAddressCC = recipientAddressCC;
   }

   /**
    * @return Returns the senderAddress.
    */
   public String getSenderAddress()
   {
      return senderAddress;
   }

   /**
    * @param senderAddress
    *            The senderAddress to set.
    */
   public void setSenderAddress(String senderAddress)
   {
      this.senderAddress = senderAddress;
   }

   /**
    * @return Returns the subject.
    */
   public String getSubject()
   {
      return subject;
   }

   /**
    * @param subject
    *            The subject to set.
    */
   public void setSubject(String subject)
   {
      this.subject = subject;
   }

   /**
    * 
    */
   public EmailServiceThread()
   {
      super();
   }

   /**
    * @param arg0
    */
   public EmailServiceThread(Runnable arg0)
   {
      super(arg0);
   }

   /**
    * @param arg0
    * @param arg1
    */
   public EmailServiceThread(ThreadGroup arg0, Runnable arg1)
   {
      super(arg0, arg1);
   }

   /**
    * @param arg0
    */
   public EmailServiceThread(String arg0)
   {
      super(arg0);
   }

   /**
    * @param arg0
    * @param arg1
    */
   public EmailServiceThread(ThreadGroup arg0, String arg1)
   {
      super(arg0, arg1);
   }

   /**
    * @param arg0
    * @param arg1
    */
   public EmailServiceThread(Runnable arg0, String arg1)
   {
      super(arg0, arg1);
   }

   /**
    * @param arg0
    * @param arg1
    * @param arg2
    */
   public EmailServiceThread(ThreadGroup arg0, Runnable arg1, String arg2)
   {
      super(arg0, arg1, arg2);
   }

   /**
    * @param arg0
    * @param arg1
    * @param arg2
    * @param arg3
    */
   public EmailServiceThread(ThreadGroup arg0, Runnable arg1, String arg2, long arg3)
   {
      super(arg0, arg1, arg2, arg3);
   }

   public void run()
   {
      try
      {
         send(senderAddress, senderName, recipientAddress, recipientAddressCC, recipientAddressBCC, subject, htmlBody, textBody, attachment,
            replyAddress);
      }
      catch(Exception e)
      {
         String recipientAdd = "";
         for(int i = 0; i < recipientAddress.length; i++)
         {
            recipientAdd += recipientAddress[i] + ",";
         }
         log.error("Unable to send email - " + recipientAdd + " (SMTP USER: " + AUTH_USER + ")", e);
         // log.debug("\n----------------------------------------- cannot send
         // mail !!!! ------------------------------------------------");
         // log.debug(e.getMessage());
         // log.debug("\n----------------------------------------- cannot send
         // mail !!!! ------------------------------------------------");
      }
   }

   public static void send(String senderAddress, String senderName, String[] recipientAddress, String[] recipientAddressCC,
      String[] recipientAddressBCC, String subject, String htmlBody, String textBody, String[] attachment, String replyAddress) throws Exception
   {
      try
      {
         Properties props = System.getProperties();

         props.put("mail.smtp.host", SMTP_SERVER);
         props.put("mail.smtp.auth", AUTH_PWD.trim().equals("") ? "false" : "true");

         if(!SMTP_PORT.trim().equals(""))
         {
            props.put("mail.smtp.port", SMTP_PORT);
            props.put("mail.smtp.socketFactory.port", SMTP_PORT);
         }

         if(USE_SSL)
         {
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.socketFactory.fallback", "false");
         }

         // will set it to true later when we get a username and pass to
         // authenticate against

         Authenticator auth = new SMTPAuthenticator();
         Session session = Session.getDefaultInstance(props, auth);

         Message msg = new MimeMessage(session);

         if(recipientAddress != null)
         {
            for(int i = 0; i < recipientAddress.length; i++)
            {
               if(recipientAddress[i] != null) msg.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientAddress[i].trim()));
            }
         }

         if(recipientAddressCC != null)
         {
            for(int i = 0; i < recipientAddressCC.length; i++)
            {
               if(recipientAddressCC[i] != null) msg.addRecipient(Message.RecipientType.CC, new InternetAddress(recipientAddressCC[i].trim()));
            }
         }

         if(recipientAddressBCC != null)
         {
            for(int i = 0; i < recipientAddressBCC.length; i++)
            {
               if(recipientAddressBCC[i] != null) msg.addRecipient(Message.RecipientType.BCC, new InternetAddress(recipientAddressBCC[i].trim()));
            }
         }

         msg.setFrom(new InternetAddress(senderAddress, senderName));
         msg.setSubject(subject);

         /*
          * This code of block is added for automatic replying of an email to
          * request@fiftyp.com
          */
         if(replyAddress.equalsIgnoreCase("request"))
         {
            Address replyToList[] = {new InternetAddress(FIFTYP_REQUEST_USER) };
            msg.setReplyTo(replyToList);
         }
         else
            if(replyAddress.equalsIgnoreCase("message"))
            {
               Address replyToList[] = {new InternetAddress(senderName) };
               msg.setReplyTo(replyToList);
            }

         BodyPart messageImage;
         MimeMultipart multipart = new MimeMultipart("alternative");

         if(textBody != null && !"".equals(textBody))
         {
            BodyPart messageBodyPart = new MimeBodyPart();
            messageBodyPart.setContent(textBody, "text/plain");
            multipart.addBodyPart(messageBodyPart);
         }

         if(htmlBody != null && !"".equals(htmlBody))
         {
            MimeMultipart multipartHtml = new MimeMultipart("related");
            BodyPart body = new MimeBodyPart();
            body.setContent(htmlBody, "text/html");
            multipartHtml.addBodyPart(body);
            
            if(attachment != null)
            {
               for(int i = 0; i < attachment.length; i++)
               {

                  msg.setContent(multipartHtml);

                  messageImage = new MimeBodyPart();
                  DataSource source = new FileDataSource(attachment[i]);
                  messageImage.setDataHandler(new DataHandler(source));
                  String[] splitedPath = attachment[i].split("/");
                  String fileName = splitedPath[splitedPath.length - 1];
                  messageImage.setHeader("Content-ID", "<" + fileName + ">");
                  messageImage.setFileName(source.getName());
                  multipartHtml.addBodyPart(messageImage);
               }
            }
            
            BodyPart messageBodyPart = new MimeBodyPart();
            messageBodyPart.setContent(multipartHtml);
            multipart.addBodyPart(messageBodyPart);
         }

         msg.setContent(multipart);
         msg.setHeader("X-Mailer", X_MAILER);

         // Getting a specific instance of the smtp transport class from the
         // session
         // is recommended when sending multiple messages because it will keep
         // the
         // connection with the mail server active between messages whereas the
         // static Transport.send() mechanism makes a sepaate connection to the
         // server
         // for each method call.
         msg.saveChanges();
         Transport transport = session.getTransport("smtp");
         transport.connect(SMTP_SERVER, AUTH_USER, AUTH_PWD);
         transport.sendMessage(msg, msg.getAllRecipients());
         transport.close();
         // Transport.send(msg);
      }
      catch(Exception e)
      {
         throw new Exception(e);
      }
   }

   public String getSenderName()
   {
      return senderName;
   }

   public void setSenderName(String senderName)
   {
      this.senderName = senderName;
   }

   public String getHtmlBody()
   {
      return htmlBody;
   }

   public void setHtmlBody(String htmlBody)
   {
      this.htmlBody = htmlBody;
   }

   public String getTextBody()
   {
      return textBody;
   }

   public void setTextBody(String textBody)
   {
      this.textBody = textBody;
   }
}