package src.com.cme.fiftyp.base;

public class BaseSystemException extends Exception
{
   private static final long serialVersionUID = -5674205009661830500L;

   public BaseSystemException(String msg)
   {
      super(msg);
   }

   public BaseSystemException(Exception ex)
   {
      super(ex);
   }
}
