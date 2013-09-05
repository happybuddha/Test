package src.com.cme.fiftyp;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import org.apache.log4j.Logger;

import com.cme.fiftyp.constants.Constants;
import com.cme.fiftyp.security.dto.ChildView;
import com.cme.fiftyp.security.dto.UserView;

public class FiftypSessionListener implements HttpSessionAttributeListener
{
   private Logger log = Logger.getLogger(FiftypSessionListener.class);

   private static Map<Long, HttpSession> sessionsMap = new HashMap<Long, HttpSession>();

   public static ChildView getChildSessionView(Long childId)
   {
      HttpSession childSession = sessionsMap.get(childId);
      if(childSession != null)
      {

         UserView loggedInUserView = (UserView) childSession.getAttribute(Constants.SESS_USER_VIEW);
         if(loggedInUserView instanceof ChildView)
         {
            ChildView childView = (ChildView) loggedInUserView;
            return childView;
         }
         else
         {
            return null;
         }
      }
      else
      {
         return null;
      }
   }

   public void attributeAdded(HttpSessionBindingEvent httpSessionBindingEvent)
   {
      log.debug("Adding attribute to session");
      if(httpSessionBindingEvent.getValue() instanceof UserView)
      {
         UserView userView = (UserView) httpSessionBindingEvent.getValue();
         sessionsMap.put(userView.getId(), httpSessionBindingEvent.getSession());
      }
   }

   public void attributeRemoved(HttpSessionBindingEvent httpSessionBindingEvent)
   {
      log.debug("Removing attribute from session");
      if(httpSessionBindingEvent.getValue() instanceof UserView)
      {
         UserView userView = (UserView) httpSessionBindingEvent.getValue();
         sessionsMap.remove(userView.getId());
      }
   }

   public void attributeReplaced(HttpSessionBindingEvent httpSessionBindingEvent)
   {
      attributeAdded(httpSessionBindingEvent);
   }
}
