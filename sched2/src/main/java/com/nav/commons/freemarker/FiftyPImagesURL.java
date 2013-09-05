package com.nav.commons.freemarker;

import java.util.List;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateModelException;

import com.cme.fiftyp.FiftyPBaseApp;
import com.cme.fiftyp.back_office.model.AppPropertyBean;
import com.cme.fiftyp.back_office.service.BackOfficeService;

public class FiftyPImagesURL implements TemplateMethodModel
{

   @SuppressWarnings("unchecked")
   public Object exec(List argsList) throws TemplateModelException
   {
      BackOfficeService backOfficeService = (BackOfficeService) FiftyPBaseApp.getBeanByName("backOfficeServiceImpl");
      List<AppPropertyBean> imagesPaths = backOfficeService.getImagePaths();
      String[] imagesPathStr = new String[imagesPaths.size()];
      int index = 0;
      for(AppPropertyBean path : imagesPaths)
      {
         imagesPathStr[index] = path.getValue() + "/images";
         index++;
      }
      return imagesPathStr;
   }
}
