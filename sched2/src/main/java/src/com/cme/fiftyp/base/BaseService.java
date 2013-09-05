package src.com.cme.fiftyp.base;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.cme.commons.validator.MessageResource;
import com.cme.fiftyp.share_points.service.SharePointsActivityManager;

public abstract class BaseService
{
   protected static Logger log = Logger.getLogger(BaseService.class);

   @Autowired
   protected MessageResource messageResource;
   
    @Autowired
   protected SharePointsActivityManager sharePointsActivityManager;
}
