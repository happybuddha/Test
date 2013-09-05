package src.com.cme.fiftyp.crypt;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public abstract class BaseDao extends HibernateDaoSupport
{
   @Resource(name = "hibSessionFactory")
   public void setParentSessionFactory(SessionFactory sessionFactory)
   {
      this.setSessionFactory(sessionFactory);
   }
}
