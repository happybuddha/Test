package com.nav.commons.mail;

import java.util.ResourceBundle;

import javax.mail.PasswordAuthentication;

import com.cme.fiftyp.constants.Constants;

public class SMTPAuthenticator extends javax.mail.Authenticator
{

   private static String SMTP_AUTH_USER;
   private static String SMTP_AUTH_PWD;

   static
   {
      readProperties();
   }

   public PasswordAuthentication getPasswordAuthentication()
   {
      return new PasswordAuthentication(SMTP_AUTH_USER, SMTP_AUTH_PWD);
   }

   private static void readProperties()
   {
      ResourceBundle myEmailProperties = ResourceBundle.getBundle(Constants.EMAIL_PROP_FILE, java.util.Locale.getDefault());
      SMTP_AUTH_USER = myEmailProperties.getString(Constants.SMTP_AUTH_USER_KEY);
      SMTP_AUTH_PWD = myEmailProperties.getString(Constants.SMTP_AUTH_PWD_KEY);
   }
}