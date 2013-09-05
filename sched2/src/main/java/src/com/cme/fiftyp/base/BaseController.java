package src.com.cme.fiftyp.base;

import java.lang.reflect.Field;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.cme.commons.validator.MessageResource;
import com.cme.commons.xmlservice.XMLService;
import com.cme.fiftyp.constants.Constants;
import com.cme.fiftyp.security.dto.UserView;
import com.cme.fiftyp.share_points.service.SharePointsActivityManager;

public abstract class BaseController
{
   @Autowired
   protected XMLService xmlService;
   
   @Autowired
   protected MessageResource messageResource;
   
   @Autowired
   protected SharePointsActivityManager sharePointsActivityManager;
   
   protected Logger log = Logger.getLogger(BaseController.class);
   
   @SuppressWarnings("unchecked")
   public static void fillModelWithOldValues(Map<String, Object> model, BaseForm form) throws IllegalArgumentException, IllegalAccessException
   {
      Field[] formFields = form.getClass().getDeclaredFields();
      boolean accessible = true;
      for(Field field : formFields)
      {
         if(field.isAccessible() == false)
         {
            accessible = false;
            field.setAccessible(true);
         }
         Object fieldValue = field.get(form);
         if(fieldValue != null)
         {
            model.put(field.getName(), fieldValue);
         }
         if(accessible == false)
         {
            field.setAccessible(false);
         }
      }
   }
   
   protected UserView getLoggedInUserView(HttpServletRequest request)
   {
      if(request.getSession().isNew()) 
         return null;
      else
         return (UserView) request.getSession().getAttribute(Constants.SESS_USER_VIEW);
   }
}
