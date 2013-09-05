package com.nav.commons.file;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ReplaceImagesPath
{
   private static String internalImageNameNoExt = "(\\Q$\\E\\Q{\\EimagesPath\\Q}\\E)([^\\.]*";
   private static String imagesPattern1 = "(src=\"|background=\")" + internalImageNameNoExt + ".(gif|jpg|png){1})([\"]{1})";
   private static String imagesPattern2 = "(\"background-image:url\\Q(\\E)" + internalImageNameNoExt + ".(gif|jpg|png){1})((\\Q)\\E;|\\Q)\\E\"){1})";

   public static void main(String[] args) throws IOException
   {
      List<String> paths = new ArrayList<String>();
      String[] patterns = {imagesPattern1, imagesPattern2};
      getAllFiles(new File("C:\\fiftyp_workspace\\fiftyp\\war\\WEB-INF\\freemarker"), paths, "ftl", "css");
      int repNum = 0;
      for(String filePaths : paths)
      {
         for(String currPattern : patterns)
         {
            repNum += processFile(filePaths, currPattern);
         }
      }
   }

   private static int processFile(String fileSrc, String patternSt) throws IOException
   {
      File newFile = new File(fileSrc + "new");
      PrintWriter fwr = new PrintWriter(newFile);
      BufferedReader in = new BufferedReader(new FileReader(fileSrc));
      Pattern pattern = Pattern.compile(patternSt);
      Matcher mtcher = null;
      String line = in.readLine();
      StringBuffer stBuilder = null;
      int repNum = 0;
      while(line != null)
      {
         stBuilder = new StringBuffer();
         mtcher = pattern.matcher(line);
         while(mtcher.find())
         {
            mtcher.appendReplacement(stBuilder, getReplacement(mtcher));
            repNum++;
         }
         mtcher.appendTail(stBuilder);
         fwr.println(stBuilder.toString());
         line = in.readLine();
      }
      in.close();
      File oldF = new File(fileSrc);
      oldF.delete();
      fwr.flush();
      fwr.close();
      newFile.renameTo(oldF);
      return repNum;
   }

   private static String getReplacement(Matcher mtcher)
   {
      String imgPath = mtcher.group(3);
      if(imgPath.indexOf("$") != -1)
      {
         imgPath = imgPath.replace("$", "\\$");
      }
      String result = mtcher.group(1) + "\\${getURL('" + imgPath + "')}" + mtcher.group(5);
      return result;
   }

   public static List<String> getAllFiles(File srcPath, List<String> paths, String... extensionsNeeded)
   {
      if(paths == null)
      {
         paths = new ArrayList<String>();
      }
      if(srcPath.isDirectory())
      {
         if(srcPath.isHidden() == false || srcPath.getName().startsWith(".") == false)
         {
            String files[] = srcPath.list();
            for(int i = 0; i < files.length; i++)
            {
               getAllFiles(new File(srcPath, files[i]), paths, extensionsNeeded);
            }
         }
      }
      else
      {
         for(String tmpSt : extensionsNeeded)
         {
            if(srcPath.getPath().indexOf(tmpSt, srcPath.getPath().length() - tmpSt.length() - 1) != -1)
            {
               paths.add(srcPath.getPath());
               return paths;
            }
         }
      }
      return paths;
   }
}
