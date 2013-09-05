package com.nav.commons.security;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.cme.commons.base.BaseController;

public interface CMEAuthorizationService
{
   public void addGrantedAuthorities(HttpServletRequest request, List<String> pvs);

   public boolean authorize(HttpServletRequest request, BaseController controller) throws SecurityException, NoSuchMethodException,
      ClassNotFoundException;
}