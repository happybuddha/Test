package com.nav.commons.validator.validators;

public class NumberValidator extends CMEValidator
{

   public boolean validate(Object o)
   {
      if((o instanceof String && ((String)o).trim().length() == 0) || o == null)
      {
         return true;
      }
      if(o instanceof Number)
      {
         return true;
      }
      else
      {
         try
         {
            Double.parseDouble((String)o);
            return true;
         }
         catch(Exception e)
         {
            return false;
         }
        
      }
   }
}
