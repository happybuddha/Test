package com.nav.commons.interceptors;

import org.apache.log4j.Logger;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * 
 * @author Maher Kilani
 * 
 */
@Component
@Aspect
public class CMEServiceInterceptor
{

   private static Logger log = Logger.getLogger(CMEServiceInterceptor.class);

   @Around("methodsToBeProfiled()")
   public Object profile(ProceedingJoinPoint pjp) throws Throwable
   {
      String logSt = "[" + pjp.getSignature().getName() + "]  [" + pjp.getTarget() + "]";
      log.debug("Calling Method Invocation: " + logSt);

      Object rt = null;

      String tmpLog = logSt + " [";
      for (Object obj : pjp.getArgs())
      {
         if (obj != null)
         {
            tmpLog += obj.toString() + ",";
         }
         else
         {
            tmpLog += "null,";
         }
      }
      tmpLog += "]";
      log.debug("Entering Method: " + tmpLog);

      rt = pjp.proceed();

      log.debug("Exiting Method: " + tmpLog + " -- Return Value=" + rt);
      return rt;
   }

   @Pointcut("execution(* com.cme..*Service*.*(..))")
   public void methodsToBeProfiled()
   {
   }

}
