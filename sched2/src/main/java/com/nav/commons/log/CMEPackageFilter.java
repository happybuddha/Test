package com.nav.commons.log;

import org.apache.log4j.spi.Filter;
import org.apache.log4j.spi.LoggingEvent;

public class CMEPackageFilter extends Filter
{
   private boolean onMatchAccept;
   private String packageString;

   public int decide(LoggingEvent arg0)
   {
      if(arg0.getLoggerName().indexOf(packageString) != -1)
      {
         if(onMatchAccept || arg0.getLoggerName().toLowerCase().indexOf("exception") != -1)
         {
            return 1;
         }
         else
         {
            return -1;
         }
      }
      return 0;
   }

   public boolean isOnMatchAccept()
   {
      return onMatchAccept;
   }

   public void setOnMatchAccept(boolean onMatchAccept)
   {
      this.onMatchAccept = onMatchAccept;
   }

   public String getPackageString()
   {
      return packageString;
   }

   public void setPackageString(String packageString)
   {
      this.packageString = packageString;
   }
}
