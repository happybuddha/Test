package src.com.cme.fiftyp.base;

import java.util.List;

public interface IBaseDao<T>
{
   public void saveOrUpdateAll(List<T> list);

   public T getBeanById(Object id);

   public void saveOrUpdateBean(T bean);
}
