package com.nav.commons.xmlservice;

import java.io.Writer;

import com.cme.commons.xmlservice.CMEPrettyPrintWriter;
import com.thoughtworks.xstream.io.HierarchicalStreamWriter;
import com.thoughtworks.xstream.io.xml.XppDriver;

public class CMEXppDriver extends XppDriver
{

   public HierarchicalStreamWriter createWriter(Writer out)
   {
      return new CMEPrettyPrintWriter(out);
   }
}
