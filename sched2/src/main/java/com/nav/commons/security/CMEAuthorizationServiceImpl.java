package com.nav.commons.security;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cme.commons.base.BaseController;
import com.cme.commons.security.annotation.Privileges;

@Service
public class CMEAuthorizationServiceImpl implements CMEAuthorizationService, CMESecurityDecisionManager
{

   private Map<String, List<String>> prvSessMap = new HashMap<String, List<String>>();
   private Map<String, Method> urlMethodMap = new HashMap<String, Method>();

   public void addGrantedAuthorities(HttpServletRequest request, List<String> privileges)
   {
      prvSessMap.put(request.getSession().getId(), privileges);
   }

   @SuppressWarnings("unchecked")
   public boolean authorize(HttpServletRequest request, BaseController controller) throws SecurityException, ClassNotFoundException
   {
      String[] tmp = controller.getClass().toString().split("\\$\\$");
      String realClassName = tmp[0].substring(6, tmp[0].length());
      Class clzz = Class.forName(realClassName);
      Method requestedMethod = null;
      String uri = request.getRequestURI();
      if(urlMethodMap.containsKey(uri))
      {
         requestedMethod = urlMethodMap.get(uri);
      }
      else
      {
         requestedMethod = getExecutingMethod(clzz, uri);
         urlMethodMap.put(uri, requestedMethod);
      }
      Annotation[] methodAnnotations = requestedMethod.getAnnotations();
      String[] privileges = null;
      for(Annotation currentAnnot : methodAnnotations)
      {
         if(currentAnnot instanceof Privileges)
         {
            privileges = ((Privileges) currentAnnot).value();
            break;
         }
      }
      if(privileges != null)
      {
         return hasAnyOfThesePrivilige(request, privileges);
      }
      else
      {
         return true;
      }
   }

   @SuppressWarnings("unchecked")
   private Method getExecutingMethod(Class controller, String requestPath)
   {
      Method[] methods = controller.getMethods();
      for(Method currentMethod : methods)
      {
         RequestMapping methodRequestAnno = currentMethod.getAnnotation(RequestMapping.class);
         if (methodRequestAnno != null)
         {
            String[] requests = methodRequestAnno.value();
            for(String currentReq : requests)
            {
               if(requestPath.indexOf(currentReq) != -1)
               {
                  return currentMethod;
               }
            }
         }
      }
      return null;
   }

   public boolean hasAnyOfThesePrivilige(HttpServletRequest request, String[] privileges)
   {
      List<String> urrPrvs = null;
      urrPrvs = prvSessMap.get(request.getSession().getId());
      if(urrPrvs != null && privileges != null)
      {
         for(int i = 0; i < privileges.length; i++)
         {
            if(urrPrvs.contains(privileges[i]))
            {
               return true;
            }
         }
      }
      else
      {
         return false;
      }
      return false;
   }
}
