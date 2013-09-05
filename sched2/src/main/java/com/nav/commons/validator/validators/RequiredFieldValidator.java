package com.nav.commons.validator.validators;

public class RequiredFieldValidator extends CMEValidator
{
   public boolean validate(Object value)
   {
      if(value == null || (value instanceof String && ((String)value).trim().length() == 0))
      {
         return false;
      }
      else return true;
   }
}