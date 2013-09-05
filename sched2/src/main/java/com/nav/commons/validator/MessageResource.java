package com.nav.commons.validator;

import java.util.ResourceBundle;

import org.springframework.stereotype.Component;

@Component
public class MessageResource
{
   private ResourceBundle resourceBundle;
   
   public MessageResource()
   {
      resourceBundle = ResourceBundle.getBundle("messages");
   }

   public String getMessage(String errorCode)
   {
      return resourceBundle.getString(errorCode);
   }
}
