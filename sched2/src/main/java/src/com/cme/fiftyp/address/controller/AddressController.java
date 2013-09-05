package src.com.cme.fiftyp.address.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cme.commons.base.BaseController;
import com.cme.commons.base.BaseSystemException;
import com.cme.commons.xmlservice.XmlServiceException;
import com.cme.fiftyp.address.model.StateBean;
import com.cme.fiftyp.address.service.AddressService;
import com.cme.fiftyp.constants.Constants;
import com.cme.utils.AjaxUtils;
import com.cme.utils.AjaxUtilsException;

@Controller
public class AddressController extends BaseController
{
   @Autowired
   private AddressService addressService;

   @RequestMapping("/address/getStates.do")
   public ModelAndView getStatesProvinces(HttpServletRequest request, HttpServletResponse response) throws BaseSystemException, IOException,
      XmlServiceException, AjaxUtilsException
   {
      String code = request.getParameter("code");
      if(code != null)
      {
         List<StateBean> states = null;
         if(code.equalsIgnoreCase("US") == true)
         {
            states = addressService.getUSStates();
         }
         else
            if(code.equalsIgnoreCase("CA") == true)
            {
               states = addressService.getCAProvince();
            }
         if(states != null)
         {
            String xmlData = xmlService.toXMLString(states);
            PrintWriter pw = response.getWriter();
            response.setContentType(Constants.TEXT_XML);
            String data = AjaxUtils.constructFiftypXMLResult(true, null, null, null, null, null, xmlData);
            pw.print(data);
            pw.flush();
            pw.close();
         }
         else
         {
            throw new BaseSystemException("Correct code is needed");
         }
      }
      else
      {
         throw new BaseSystemException("Code is needed");
      }

      return null;
   }
}
