package com.nav.commons.xmlservice;
/**
 * Singleton class
 * @author CME
 *
 */
public interface XMLService
{
	public String toXMLString(Object obj) throws XmlServiceException;
	
	public Object fromXMLString(String jsonString);

   public void setXstreamMode(int mode);

}