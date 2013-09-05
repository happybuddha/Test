package com.nav.commons.interceptors;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.cme.commons.base.BaseController;
import com.cme.commons.security.CMEAuthorizationService;
import com.cme.fiftyp.FiftyPBaseApp;
import com.cme.fiftyp.constants.Constants;

/**
 * 
 * @author Maher Kilani
 * 
 */
@Component
public class CMESecurityInterceptor implements HandlerInterceptor
{
   private static Logger log = Logger.getLogger(CMESecurityInterceptor.class);

   @Autowired
   private CMEAuthorizationService cmeAuthorizationService;

   public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3) throws Exception
   {
   }

   public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3) throws Exception
   {
   }

   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception
   {
      log.debug("pre handling controller method.  class: " + arg2.getClass().getName());
      boolean proceed = cmeAuthorizationService.authorize(request, (BaseController) arg2);
      if(proceed == false && request.getSession().getAttribute(Constants.SESS_USER_VIEW) != null)
      {
         if(request.getParameter("aja_mk_pointer") == null)
         {
            response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "genErr.do?errCode=1");
         }
         else
         {
            handleAjaxRequests(response, 1);
         }
      }
      else
         if(proceed == false && request.getSession().getAttribute(Constants.SESS_USER_VIEW) == null)
         {
            if(request.getParameter("aja_mk_pointer") == null)
            {
               response.sendRedirect(FiftyPBaseApp.MAIN_DOMAIN + "genErr.do?errCode=2");
            }
            else
            {
               handleAjaxRequests(response, 2);
            }
         }
      return proceed;
   }

   private void handleAjaxRequests(HttpServletResponse response, Integer errorCode)
   {
      ServletOutputStream os = null;
      try
      {
         os = response.getOutputStream();
         response.setContentType(Constants.TEXT_XML);
         os.print("<cmeExceptionMessage>");
         if(errorCode.equals(2))
         {
            os.print(Constants.SESSION_EXPIRED_MSG);
         }
         else
            if(errorCode.equals(1))
            {
               os.print("Not enough privileges");
            }
         os.print("</cmeExceptionMessage>");
         os.flush();
         os.close();
      }
      catch(Exception e)
      {
         log.error("", e);
      }
   }
}