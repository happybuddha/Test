package src.com.cme.fiftyp.crypt;

import java.io.Serializable;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class BasicDao extends HibernateDaoSupport
{
   private static BasicDao instance = null;

   private BasicDao()
   {
   }

   public synchronized static BasicDao getInstance()
   {
      if(instance == null)
      {
         instance = new BasicDao();
      }
      return instance;
   }

   public BaseBean loadBean(Class<? extends BaseBean> clazz, Object id)
   {
      return (BaseBean) getHibernateTemplate().load(clazz, (Serializable) id);
   }

   public BaseBean getBean(Class<? extends BaseBean> clazz, Object id)
   {
      return (BaseBean) getHibernateTemplate().get(clazz, (Serializable) id);
   }

   public void saveOrUpdateAll(List<? extends BaseBean> l)
   {
      getHibernateTemplate().saveOrUpdateAll(l);
   }
   
   public void saveOrUpdate(Object bean)
   {
      getHibernateTemplate().saveOrUpdate(bean);
   }
}