package src.com.cme.fiftyp.address.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

import com.cme.commons.base.BaseBean;

@Entity
@Table(name = "address_type")
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
public class AddressTypeBean implements BaseBean
{
   /**
    * 
    */
   private static final long serialVersionUID = -7357248252216828725L;

   private String addressTypeId;
   private String name;
   private String description;

   @Id
   @Column(name = "address_type_id")
   public String getAddressTypeId()
   {
      return addressTypeId;
   }

   public void setAddressTypeId(String addressTypeId)
   {
      this.addressTypeId = addressTypeId;
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

}