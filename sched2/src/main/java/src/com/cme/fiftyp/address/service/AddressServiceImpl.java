package src.com.cme.fiftyp.address.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cme.commons.base.BaseService;
import com.cme.fiftyp.address.dao.AddressDao;
import com.cme.fiftyp.address.model.StateBean;

@Service
public class AddressServiceImpl extends BaseService implements AddressService
{

   @Autowired
   private AddressDao addressDao;

   public List<StateBean> getCAProvince()
   {
      return addressDao.getCAProvince();
   }

   public List<StateBean> getUSStates()
   {
      return addressDao.getUSStates();
   }

}
