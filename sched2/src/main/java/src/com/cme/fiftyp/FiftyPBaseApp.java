package src.com.cme.fiftyp;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.ResourceBundle;

import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import com.cme.commons.freemarker.FiftyPImagesURL;
import com.cme.commons.freemarker.FiftyPURL;
import com.cme.fiftyp.constants.Constants;

import freemarker.template.Configuration;
import freemarker.template.TemplateModelException;

@Component
public class FiftyPBaseApp implements ApplicationContextAware
{

   /**
    * 
    */
   public static ArrayList<Long> shareVisitors = new ArrayList<Long>();
   public static ArrayList<Long> saveVisitors = new ArrayList<Long>();
   public static ArrayList<Long> mmVisitors = new ArrayList<Long>();
   private static final long serialVersionUID = -6059896058628530905L;
   public static final String APPROVE_EMAIL_IMAGE_PATH;
   public static final String REJECT_EMAIL_IMAGE_PATH;
   private static Logger log = Logger.getLogger(FiftyPBaseApp.class);
   private static ApplicationContext appCtx;
   private static String CATALINA_HOME;
   public static String SUB_DOMAIN_1;
   public static String SUB_DOMAIN_2;
   public static String SUB_DOMAIN_3;
   public static String SUB_DOMAIN_4;
   public static String SEC_SUB_DOMAIN_1;
   public static String SEC_SUB_DOMAIN_2;
   public static String SEC_SUB_DOMAIN_3;
   public static String MAIN_DOMAIN;
   public static String FREEMARKER_DIR;
   public static String EMAIL_LOGO_PHYSICAL_PATH;
   public static String SPEND_SHARE_SAVE_IMG_PATH;
   public static String EARN_MONEY_IMG_PATH;
   public static String FIFTYP_GIVES_IMG_PATH;
   public static String COMMUNITY_IMG_PATH;
   public static String KIDS_SHARE_IMG_PATH;
   public static String SPREAD_IMAGE_CARD_PATH;
   public static String APP_ROOT_PATH;
   public static String SECURE_DOMAIN;
   public static String VERSION_NUM;
   public static String TRACKING_SCRIPT_FLAG;
   public static String ORDERS_REPORT_PATH;
   public static String ORDERS_REPORT_BACKUP_PATH;
   public static String ORDERS_REPORT_CANADA_PATH;
   public static String WELCOME_EMAIL_IMAGE_PATH;// image path is used for
   // welcome email.
   public static String WELCOME_MAIL_CAUSES_MONTH;
   public static String WELCOME_MAIL_SCHOLASTIC_DATE;
   public static String SVM_LOG_PATH;
   public static String SVM_PROCESSED_LOG_PATH;
   public static String PARENT_CHILD_PHOTO_PATH;// image path is used for storing child photos uploaded by parents  
   public static String MAIN_CAUSE_IMAGES_PATH;//cause images main path
   public static String CAUSE_IMAGES_PATH;//cause images path
   public static String NGO_PHOTO_PATH;
   public static String GIFT_CARD_IMAGE_PATH_US;
   public static String GIFT_CARD_IMAGE_PATH_CA;
   public static String SHARE_CONFIRMATION_NGO_LOGO_PHYSICAL_PATH;
   public static int EVENT_ROLLING_MAX;
   public static String SUPPORT_EMAIL_ADDRESS;
   public static String SITE_URL;
   public static String SECRET_KEY;
   
   public static String DEFAULT_AVATAR_PATH;
   public static String DEFAULT_GIRL_AVATAR_PATH;
   public static String DEFAULT_BOY_AVATAR_PATH;

   static
   {
      ResourceBundle pathsProp = ResourceBundle.getBundle(Constants.PATHS_PROP_FILE);
      CATALINA_HOME = pathsProp.getString(Constants.CATALINA_HOME);
      MAIN_DOMAIN = pathsProp.getString(Constants.MAIN_PATH);
      SECURE_DOMAIN = pathsProp.getString(Constants.SECURE_DOMAIN);
      EMAIL_LOGO_PHYSICAL_PATH = pathsProp.getString(Constants.EMAIL_LOGO_PHYSICAL_PATH);
      APPROVE_EMAIL_IMAGE_PATH = pathsProp.getString(Constants.APPROVE_EMAIL_LOGO_PHYSICAL_PATH);
      REJECT_EMAIL_IMAGE_PATH = pathsProp.getString(Constants.REJECT_EMAIL_LOGO_PHYSICAL_PATH);      
      SPREAD_IMAGE_CARD_PATH = pathsProp.getString(Constants.SPREAD_CARD_PHYSICAL_PATH);
      APP_ROOT_PATH = pathsProp.getString(Constants.APP_ROOT_PATH);
      FREEMARKER_DIR = APP_ROOT_PATH + "WEB-INF/freemarker/";
      ResourceBundle versionProp = ResourceBundle.getBundle(Constants.VERSION_PROP_FILE);
      VERSION_NUM = versionProp.getString(Constants.VERSION_KEY);
      ResourceBundle configProp = ResourceBundle.getBundle(Constants.CONFIG_PROP_FILE);
      TRACKING_SCRIPT_FLAG = configProp.getString(Constants.TRACKING_SCRIPT_FLAG);
      ORDERS_REPORT_PATH = pathsProp.getString(Constants.ORDERS_REPORT_PATH);
      ORDERS_REPORT_BACKUP_PATH = pathsProp.getString(Constants.ORDERS_REPORT_BACKUP_PATH);
      WELCOME_EMAIL_IMAGE_PATH = pathsProp.getString(Constants.WELCOM_EMAIL_IMAGE_PATH);
      WELCOME_MAIL_CAUSES_MONTH = pathsProp.getString(Constants.WELCOME_MAIL_CAUSES_MONTH);
      WELCOME_MAIL_SCHOLASTIC_DATE = pathsProp.getString(Constants.WELCOME_MAIL_SCHOLASTIC_DATE);
      SVM_LOG_PATH = pathsProp.getString(Constants.SVM_LOG_PATH);
      SVM_PROCESSED_LOG_PATH = pathsProp.getString(Constants.SVM_PROCESSED_LOG_PATH);
      PARENT_CHILD_PHOTO_PATH = pathsProp.getString(Constants.PARENT_CHILD_PHOTO_PATH);
      MAIN_CAUSE_IMAGES_PATH =pathsProp.getString(Constants.MAIN_CAUSE_IMAGES_PATH);
      CAUSE_IMAGES_PATH =pathsProp.getString(Constants.CAUSE_IMAGES_PATH);
      NGO_PHOTO_PATH =  pathsProp.getString(Constants.NGO_PHOTO_PATH);
      GIFT_CARD_IMAGE_PATH_US =  pathsProp.getString(Constants.GIFT_CARD_PATH_US);
      GIFT_CARD_IMAGE_PATH_CA =  pathsProp.getString(Constants.GIFT_CARD_PATH_CA);
      ORDERS_REPORT_CANADA_PATH = pathsProp.getString(Constants.ORDERS_REPORT_CANADA_PATH);
      SHARE_CONFIRMATION_NGO_LOGO_PHYSICAL_PATH = pathsProp.getString(Constants.SHARE_CONFIRMATION_IMAGE_PHYSICAL_PATH);
      EVENT_ROLLING_MAX = Integer.valueOf(configProp.getString(Constants.EVENT_ROLLING_MAX)).intValue();
      SUPPORT_EMAIL_ADDRESS = configProp.getString(Constants.SUPPORT_EMAIL_ADDRESS);
      SITE_URL = configProp.getString(Constants.SITE_URL);
      SECRET_KEY = configProp.getString(Constants.SECRET_KEY_FOR_ENCODING);  
      
      /** 1183 - Default avatar path */
       DEFAULT_AVATAR_PATH = pathsProp.getString(Constants.DEFAULT_AVATAR_PATH);
       DEFAULT_GIRL_AVATAR_PATH = pathsProp.getString(Constants.DEFAULT_GIRL_AVATAR_PATH);
       DEFAULT_BOY_AVATAR_PATH = pathsProp.getString(Constants.DEFAULT_BOY_AVATAR_PATH);
   }

   public FiftyPBaseApp() throws IOException
   {
      log.debug("Configuring FiftyP App");
      copyNecessaryFiles();
      createDirectories();
      ResourceBundle myEmailProperties = ResourceBundle.getBundle(Constants.EMAIL_PROP_FILE, java.util.Locale.getDefault());
      boolean useSSL = myEmailProperties.getString(Constants.SMTP_USE_SSL_KEY).trim().equalsIgnoreCase("true") ? true : false;
      if(useSSL)
      {
         System.setProperty("mail.smtp.starttls.enable", "true");
      }
      else
      {
         System.setProperty("mail.smtp.starttls.enable", "false");
      }
      log.debug("DONE Configuring FiftyP App");
   }

   /**
    * This function is copying css and js to upper level in order to take
    * advantage of caching
    * 
    * @throws IOException
    */
   private static void copyNecessaryFiles() throws IOException
   {
      String fileInputPath, fileOutputPath;
      fileInputPath = FREEMARKER_DIR + File.separator + "embeded_js" + File.separator;
      fileOutputPath = APP_ROOT_PATH + File.separator + "scripts" + File.separator;
      // will move files

      String[] filePaths = {fileInputPath + "yui/yahoo-dom-event/yahoo-dom-event.js", fileInputPath + "yui/container/container-min.js",
         fileInputPath + "yui/datasource/connection-min.js", fileInputPath + "yui/datasource/datasource-min.js", fileInputPath + "popupManager.js",
         fileInputPath + "utils.js", fileInputPath + "tooltipManager.js", fileInputPath + "datasource.js" };
      File allInOneJs = new File(fileOutputPath + "allInOne.js");
      allInOneJs.delete();
      mergeFiles(filePaths, allInOneJs);
   }

   private static void mergeFiles(String[] filePaths, File allInOneJs) throws FileNotFoundException, IOException
   {
      PrintWriter pwr = new PrintWriter(allInOneJs);
      for(String fPath : filePaths)
      {
         BufferedReader br = new BufferedReader(new FileReader(fPath));
         String line = br.readLine();
         while(line != null)
         {
            pwr.println(line);
            line = br.readLine();
         }
         pwr.println("//new file ----");
      }
      pwr.flush();
      pwr.close();
   }
   
   /**
    * Create any system required directories.
    */
   private static void createDirectories()
   {
      // Create directory for storing parent uploaded child photos.
      File dir = new File(FiftyPBaseApp.PARENT_CHILD_PHOTO_PATH);
      try
      {
         if (dir.exists() == false)
         {
            if (dir.mkdir() == false)
            {
               log.error("Unable to create dir: " + FiftyPBaseApp.PARENT_CHILD_PHOTO_PATH);
            }
            else
            {
               log.info("Created dir: " + FiftyPBaseApp.PARENT_CHILD_PHOTO_PATH);
            }
         }
      }
      catch(Exception e)
      {
         log.error("Unable to create dir: " + FiftyPBaseApp.PARENT_CHILD_PHOTO_PATH, e);
      }
   }

   public static Object getBeanByName(String beanName)
   {
      return appCtx.getBean(beanName);
   }

   public void setApplicationContext(ApplicationContext arg0)
   {
      appCtx = arg0;
      FreeMarkerConfigurer fConfig = ((FreeMarkerConfigurer) appCtx.getBean("freemarkerConfig"));
      try
      {
         setUpFreeMarkerConfiguration(fConfig.getConfiguration());
      }
      catch(TemplateModelException e)
      {
         log.error("Unable to configure FIFTYP APP", e);
      }
   }

   public static void setUpFreeMarkerConfiguration(Configuration config) throws TemplateModelException
   {
      config.setSharedVariable("getURL", new FiftyPURL());
      config.setSharedVariable("pagesPath", MAIN_DOMAIN);
      config.setSharedVariable("getImageUrls", new FiftyPImagesURL());
      config.setSharedVariable("versionNum", VERSION_NUM);
      config.setSharedVariable("secureDomain", SECURE_DOMAIN);
      config.setSharedVariable(Constants.TRACKING_SCRIPT_FLAG, TRACKING_SCRIPT_FLAG);
      /**#1194 - add support email id */
      config.setSharedVariable(Constants.SUPPORT_EMAIL_ID, FiftyPBaseApp.SUPPORT_EMAIL_ADDRESS);      
   }

   public static ApplicationContext getAppCtx()
   {
      return appCtx;
   }

   public static void setAppCtx(ApplicationContext appCtx)
   {
      FiftyPBaseApp.appCtx = appCtx;
   }

   public static String getCatatlinaHome()
   {
      return CATALINA_HOME;
   }
}