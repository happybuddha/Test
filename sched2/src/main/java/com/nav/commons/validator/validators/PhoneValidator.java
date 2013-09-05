package com.nav.commons.validator.validators;


public class PhoneValidator extends CMEValidator
{
   //wrong validation
   public boolean validate(Object value)
   {
       boolean result = true ;
      if(value == null || (value instanceof String && ((String)value).trim().length() == 0))
      {
         return false;
      }
      else 
      {
         String phone=value.toString();
         String  specialCharacters[]={")","("," ", "-", "*", "#"};
         
         for (int i=0; i<specialCharacters.length; i++)
         {
              phone=phone.replace(specialCharacters[i],"");
         }
         if (phone.length()!=10) return false;    
         NumberValidator numberValidator= new NumberValidator();
         result = numberValidator.validate(phone);
      }
         
         
         return result;
   }
}