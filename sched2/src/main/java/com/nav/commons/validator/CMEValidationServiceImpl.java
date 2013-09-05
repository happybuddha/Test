package com.nav.commons.validator;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

import com.cme.commons.base.BaseForm;
import com.cme.commons.base.BaseService;
import com.cme.commons.validator.annotations.Validation;
import com.cme.commons.validator.annotations.ValidationType;
import com.cme.commons.validator.validators.CMEValidator;

@Service
public class CMEValidationServiceImpl extends BaseService implements CMEValidationService
{
   @Autowired
   private MessageResource messageResource;

   @SuppressWarnings("unchecked")
   public void validateForm(BaseForm frm, Errors errors)
   {
      // first will gather all the fields from the class hierarchy
      List<Field> formFields = new ArrayList<Field>();
      addFieldsToList(formFields, frm.getClass().getDeclaredFields());
      Class superClass = frm.getClass().getSuperclass();
      while(superClass != BaseForm.class && superClass != Object.class)
      {
         addFieldsToList(formFields, frm.getClass().getDeclaredFields());
         superClass = superClass.getSuperclass();
      }

      // looping accross the fields
      boolean validationResult = false;
      for(Field tmpF : formFields)
      {
         Annotation validationAnnotation = tmpF.getAnnotation(Validation.class);
         // checking if validation annotaction exist
         if(validationAnnotation != null)
         {
            ValidationType[] validationTypes = ((Validation) validationAnnotation).value();
            for(ValidationType currentValidationType : validationTypes)
            {
               Class validationClass = currentValidationType.validationClass();
               CMEValidator validatorInstance;
               try
               {
                  validatorInstance = (CMEValidator) validationClass.newInstance();

                  Object fieldValue;

                  boolean isAccessible = tmpF.isAccessible();
                  if(isAccessible == false)
                  {
                     tmpF.setAccessible(true);
                  }

                  fieldValue = tmpF.get(frm);

                  validationResult = processValidation(validatorInstance, fieldValue);

                  if(isAccessible == false)
                  {
                     tmpF.setAccessible(false);
                  }
                  if(false == validationResult)
                  {
                     // should retrieve message from resource bundle
                     errors.rejectValue(tmpF.getName(), "errorCode", null, resolveErrorCode(currentValidationType.errorCode()));
                  }
               }
               catch(IllegalArgumentException e)
               {
                  log.error("Binding Error", e);
               }
               catch(IllegalAccessException e)
               {
                  log.error("Binding Error", e);
               }
               catch(InstantiationException e)
               {
                  log.error("Error creating validator instance", e);
               }
            }
         }
      }
   }

   private static void addFieldsToList(List<Field> l, Field[] fields)
   {
      for(Field f : fields)
      {
         l.add(f);
      }
   }

   @SuppressWarnings("unchecked")
   private boolean processValidation(CMEValidator validatorInstance, Object fieldValue)
   {
      return validatorInstance.validate(fieldValue);
   }

   public String resolveErrorCode(String errorCode)
   {
      return messageResource.getMessage(errorCode);
   }

}
