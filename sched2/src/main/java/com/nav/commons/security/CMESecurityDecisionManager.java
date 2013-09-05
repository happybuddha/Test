package com.nav.commons.security;

import javax.servlet.http.HttpServletRequest;

public interface CMESecurityDecisionManager
{
   /**
    * this method is supposed to return true in case the user has
    * any of these priviliges
    * @param request
    * @param priviliges
    * @return
    */
   public boolean hasAnyOfThesePrivilige(HttpServletRequest request, String[] priviliges);
}
