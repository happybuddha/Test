package com.nav.commons.xmlservice;

public interface CDataXMLService
{
   public String toXMLString(Object obj) throws XmlServiceException;   
   public Object fromXMLString(String jsonString);

   public void setXstreamMode(int mode);
}
