package com.nav.commons.xmlservice;

import org.springframework.stereotype.Service;

import com.cme.commons.interceptors.HibernateProxyCleaner;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.mapper.MapperWrapper;

@Service
public class CDataXMLServiceImpl implements CDataXMLService
{   
   protected XStream xstream;

   private static XMLService instance;

   protected CDataXMLServiceImpl()
   {
      xstream = new XStream(new CMEXppDriver())
      {
         protected MapperWrapper wrapMapper(MapperWrapper next)
         {
            return new PackageStrippingMapper(next);
         }
      };
      xstream.setMode(XStream.XPATH_ABSOLUTE_REFERENCES);
   }
   
   public void setXstreamMode(int mode)
   {
      this.xstream.setMode(mode);
   }
   

   public String toXMLString(Object obj) throws XmlServiceException
   {
      if(obj == null) return null;

      try
      {
         HibernateProxyCleaner.cleanObject(obj, null);
      }
      catch(Exception e)
      {
         throw new XmlServiceException(e);
      }

      return xstream.toXML(obj);
   }

   public Object fromXMLString(String xmlString)
   {
      if(xmlString == null) return null;
      return xstream.fromXML(xmlString);
   }

   public synchronized static XMLService getInstance()
   {
      if(instance == null) instance = new XMLServiceImpl();
      return instance;
   }
}
