package src.com.cme.fiftyp;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.cme.commons.mail.EmailService;

public class FiftypServletContextListener implements ServletContextListener
{
   @Override
   public void contextDestroyed(ServletContextEvent arg0)
   {
      //processing existing unprocessed mails before application is brought down
      EmailService.processEmails();
   }

   @Override
   public void contextInitialized(ServletContextEvent arg0)
   {
   }

}
