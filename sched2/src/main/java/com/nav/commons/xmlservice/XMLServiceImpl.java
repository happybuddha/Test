package com.nav.commons.xmlservice;

import org.springframework.stereotype.Service;

import com.cme.commons.interceptors.HibernateProxyCleaner;
import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.converters.reflection.PureJavaReflectionProvider;
import com.thoughtworks.xstream.mapper.Mapper;
import com.thoughtworks.xstream.mapper.MapperWrapper;

@Service
public class XMLServiceImpl implements XMLService
{
   protected XStream xstream;

   private static XMLService instance;

   protected XMLServiceImpl()
   {
      xstream = new XStream(new PureJavaReflectionProvider())
      {
         // protected MapperWrapper wrapMapper(MapperWrapper next) {
         // return new PackageStrippingMapper(next);
         // }
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
//"<?xml version=\"1.0\" encoding=\"utf-8\"?>"
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

class PackageStrippingMapper extends MapperWrapper
{
   public PackageStrippingMapper(Mapper wrapped)
   {
      super(wrapped);
   }

   @SuppressWarnings("unchecked")
   public String serializedClass(Class type)
   {
      String classType = Character.toLowerCase(type.getName().replaceFirst(".*\\.", "").charAt(0))
         + type.getName().replaceFirst(".*\\.", "").substring(1);// type.getName().replaceFirst(".*\\.",
      // "");
      if(classType.charAt(classType.length() - 1) == ';') classType = classType.replace(";", "");
      return classType;
   }

   /**
    * 
    * This method strips an camel casing or underscore prefix from the given
    * field name so it can be used as an XML element name.
    * 
    */
   @SuppressWarnings("unchecked")
   public String serializedMember(Class theClass, String fieldName)
   {
      if(fieldName.charAt(0) == '_') fieldName = fieldName.substring(1);

      fieldName = Character.toLowerCase(fieldName.charAt(0)) + fieldName.substring(1);

      return super.serializedMember(theClass, fieldName);
   }
}