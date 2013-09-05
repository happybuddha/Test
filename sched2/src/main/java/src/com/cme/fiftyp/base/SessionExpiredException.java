package src.com.cme.fiftyp.base;


public class SessionExpiredException extends BaseBusinessException
{
   private static final long serialVersionUID = 1L;

   /**
    * 
    */
   public SessionExpiredException()
   {
      super();
   }

   /**
    * @param arg0
    */
   public SessionExpiredException(String arg0)
   {
      super(arg0);
   }

   /**
    * @param arg0
    * @param arg1
    */
   public SessionExpiredException(String arg0, Throwable arg1)
   {
      super(arg0, arg1);
   }

   /**
    * @param arg0
    */
   public SessionExpiredException(Throwable arg0)
   {
      super(arg0);
   }

}
