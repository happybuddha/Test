package src.com.cme.fiftyp;

import java.util.Date;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.log4j.Logger;

import com.cme.commons.base.BasicDao;
import com.cme.fiftyp.constants.Constants;
import com.cme.fiftyp.security.dto.UserView;
import com.cme.fiftyp.users.model.LoginBean;

public class FiftypSessionExpiryListener implements HttpSessionListener
{

   private Logger log = Logger.getLogger(FiftypSessionListener.class);

   @Override
   public void sessionCreated(HttpSessionEvent arg0)
   {
      // TODO Auto-generated method stub

   }

   @Override
   public void sessionDestroyed(HttpSessionEvent sessionEvent)
   {
      // to log the users last logout time
      log.debug("In the session destroyed method");
      UserView userView = (UserView) sessionEvent.getSession().getAttribute(Constants.SESS_USER_VIEW);
      // check if the userView not null
      if(userView != null)
      {
         BasicDao bDao = BasicDao.getInstance();
         LoginBean loginBean = (LoginBean) (bDao.getBean(LoginBean.class, userView.getId()));
         loginBean.setLastLogout(new Date());
         bDao.saveOrUpdate(loginBean);
      }

   }

}
