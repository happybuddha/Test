package com.nav.commons.interceptors;

import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.BeanPropertyBindingResult;

import com.cme.commons.base.BaseForm;
import com.cme.commons.validator.CMEValidationService;

/**
 * 
 * @author Maher Kilani
 * 
 */
@Component
@Aspect
public class CMEValidationInterceptor
{
   private static Logger log = Logger.getLogger(CMEValidationInterceptor.class);

   @Autowired
   private CMEValidationService cmeValidationService;

   @Around("methodsToBeProfiled()")
   public Object validateForms(ProceedingJoinPoint pjp) throws Throwable
   {
      String logSt = "[" + pjp.getSignature().getName() + "]  [" + pjp.getTarget() + "]";
      log.debug("Validating Form: " + logSt );

      Object[] methodArgs = pjp.getArgs();
      String tmpLog = logSt + " [" + methodArgs.toString() + "]";

      // need to validate the command class
      // if the command class implements baseform
      BaseForm frm = null;
      for(Object arg : methodArgs)
      {
         if(arg != null && arg instanceof BaseForm)
         {
            frm = (BaseForm) arg;
            break;
         }
      }

      if(frm != null) // checking if a form exist
      {
         for(Object arg : methodArgs)
         {
            if(arg != null && arg instanceof BeanPropertyBindingResult)
            {
               cmeValidationService.validateForm(frm, (BeanPropertyBindingResult) arg);
               if(((BeanPropertyBindingResult) arg).hasErrors())
               {
                  log.debug("Validation failed, aborting controller entrance");
                  break;
               }
            }
         }
      }

      log.debug("Entering Controller Method: " + tmpLog);

      Object rt = null;
      rt = pjp.proceed();

      log.debug("Exiting Controller Method: " + tmpLog);
      return rt;
   }

   @Pointcut("execution(* com.cme..*Controller*.*(..))")
   public void methodsToBeProfiled()
   {
   }
}