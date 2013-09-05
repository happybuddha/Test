package src.com.cme.fiftyp.address.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.cme.commons.base.BaseBean;

@Entity
@Table(name = "state")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class StateBean implements BaseBean
{
   /**
    * 
    */
   private static final long serialVersionUID = 1L;

   private String stateCode;
   private String countryCode;
   private String name;
   private String description;
   private Long stateId;

   @Id
   @Column(name = "state_code")
   public String getStateCode()
   {
      return stateCode;
   }

   public void setStateCode(String stateCode)
   {
      this.stateCode = stateCode;
   }

   @Column(name = "country_code")
   public String getCountryCode()
   {
      return countryCode;
   }

   public void setCountryCode(String countryCode)
   {
      this.countryCode = countryCode;
   }

   @Column(name = "name")
   public String getName()
   {
      return name;
   }

   public void setName(String name)
   {
      this.name = name;
   }

   @Column(name = "description")
   public String getDescription()
   {
      return description;
   }

   public void setDescription(String description)
   {
      this.description = description;
   }
   @Column(name = "state_id")
   public Long getStateId()
   {
      return stateId;
   }

   public void setStateId(Long stateId)
   {
      this.stateId = stateId;
   }
}
