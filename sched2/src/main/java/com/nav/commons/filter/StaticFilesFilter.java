package com.nav.commons.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

public class StaticFilesFilter implements Filter
{
   public void destroy()
   {

   }

   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException
   {
      // if both max age and expires are present, max age will override expires
      // ((HttpServletResponse) response).addHeader("Expires", "Thu, 1 Jan 2099
      // 23:59:59 GMT");
      int cacheTime = 60 * 60 * 12;
      ((HttpServletResponse) response).addHeader("Cache-Control", "max-age=" + cacheTime);
      // ((HttpServletResponse) response).addHeader("Last-Modified", "Thu, 1 Jan
      // 1970 00:00:00 GMT");
      chain.doFilter(request, response);
   }

   public void init(FilterConfig arg0)
   {

   }
}
