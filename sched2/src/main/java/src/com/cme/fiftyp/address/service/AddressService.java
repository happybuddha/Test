package src.com.cme.fiftyp.address.service;

import java.util.List;

import com.cme.fiftyp.address.model.StateBean;

public interface AddressService
{
   public List<StateBean> getUSStates();

   /**
    * Will get 10 provinces and 3 territories
    * 
    * @return
    */
   public List<StateBean> getCAProvince();
}
