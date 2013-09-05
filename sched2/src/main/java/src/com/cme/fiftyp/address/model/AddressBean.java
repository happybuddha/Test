package src.com.cme.fiftyp.address.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.cme.commons.base.BaseBean;

@Entity
@Table(name = "address")
public class AddressBean implements BaseBean
{
   /**
    * 
    */
   private static final long serialVersionUID = -4103454873400247675L;

   private Long addressId;
   private StateBean stateBean;
   private CountryBean countryBean;
   private String firstName;
   private String lastName;
   private String nameOnCard;
   private String addressLine1;
   private String addressLine2;
   private String city;
   //private String dayTimePhone;
   private AddressTypeBean addressTypeBean;
   private String zipCode;
   private String email;
   private String company;

   public boolean equals(Object o)
   {
      if(o instanceof AddressBean == false)
      {
         return false;
      }
      AddressBean newAddressBean = (AddressBean) o;
      boolean sameAdd1 = this.addressLine1 != null ? this.addressLine1.equals(newAddressBean.addressLine1)
         : this.addressLine1 == newAddressBean.addressLine1;
      boolean sameAdd2 = this.addressLine2 != null ? this.addressLine2.equals(newAddressBean.addressLine2)
         : this.addressLine2 == newAddressBean.addressLine2;
      boolean sameCity = this.city != null ? this.city.equals(newAddressBean.city) : this.city == newAddressBean.city;
     /* boolean samePhone = this.dayTimePhone != null ? this.dayTimePhone.equals(newAddressBean.dayTimePhone)
         : this.dayTimePhone == newAddressBean.dayTimePhone;*/
      boolean sameFirstName = this.firstName != null ? this.firstName.equals(newAddressBean.firstName) : this.firstName == newAddressBean.firstName;
      boolean sameLastName = this.lastName != null ? this.lastName.equals(newAddressBean.lastName) : this.lastName == newAddressBean.lastName;
      boolean sameZip = this.zipCode != null ? this.zipCode.equals(newAddressBean.zipCode) : this.zipCode == newAddressBean.zipCode;
      boolean sameState = this.stateBean.getStateCode() != null ? this.stateBean.getStateCode().equals(newAddressBean.stateBean.getStateCode())
         : this.stateBean.getStateCode() == newAddressBean.stateBean.getStateCode();
      boolean sameEmail = this.email != null ? this.email.equals(newAddressBean.email) : this.email == newAddressBean.email;
      boolean sameCompany = this.company != null ? this.company.equals(newAddressBean.company) : this.company == newAddressBean.company;
      if(sameAdd1 && sameAdd2 && sameCity  && sameFirstName && sameLastName && sameZip && sameState && sameCompany && sameEmail)
      {
         return true;
      }
      else
      {
         return false;
      }
   }

   @Column(name = "email")
   public String getEmail()
   {
      return email;
   }

   public void setEmail(String email)
   {
      this.email = email;
   }

   @Column(name = "company")
   public String getCompany()
   {
      return company;
   }

   public void setCompany(String company)
   {
      this.company = company;
   }

   @Column(name = "zip_code")
   public String getZipCode()
   {
      return zipCode;
   }

   public void setZipCode(String zipCode)
   {
      this.zipCode = zipCode;
   }

   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   @Column(name = "address_id")
   public Long getAddressId()
   {
      return addressId;
   }

   public void setAddressId(Long addressId)
   {
      this.addressId = addressId;
   }

   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "state_code")
   public StateBean getStateBean()
   {
      return stateBean;
   }

   public void setStateBean(StateBean stateBean)
   {
      this.stateBean = stateBean;
   }

   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "country_code")
   public CountryBean getCountryBean()
   {
      return countryBean;
   }

   public void setCountryBean(CountryBean countryBean)
   {
      this.countryBean = countryBean;
   }

   @Column(name = "first_name")
   public String getFirstName()
   {
      return firstName;
   }

   public void setFirstName(String firstName)
   {
      this.firstName = firstName;
   }

   @Column(name = "last_name")
   public String getLastName()
   {
      return lastName;
   }

   public void setLastName(String lastName)
   {
      this.lastName = lastName;
   }

   @Column(name = "address_line_1")
   public String getAddressLine1()
   {
      return addressLine1;
   }

   public void setAddressLine1(String addressLine1)
   {
      this.addressLine1 = addressLine1;
   }

   @Column(name = "address_line_2")
   public String getAddressLine2()
   {
      return addressLine2;
   }

   public void setAddressLine2(String addressLine2)
   {
      this.addressLine2 = addressLine2;
   }

   @Column(name = "city")
   public String getCity()
   {
      return city;
   }

   public void setCity(String city)
   {
      this.city = city;
   }

  /* @Column(name = "daytime_phone")
   public String getDayTimePhone()
   {
      return dayTimePhone;
   }

   public void setDayTimePhone(String dayTimePhone)
   {
      this.dayTimePhone = dayTimePhone;
   }*/

   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "address_type_id")
   public AddressTypeBean getAddressTypeBean()
   {
      return addressTypeBean;
   }

   public void setAddressTypeBean(AddressTypeBean addressTypeBean)
   {
      this.addressTypeBean = addressTypeBean;
   }
   
   @Column(name = "name_on_card")
   public String getNameOnCard()
   {
      return nameOnCard;
   }

   public void setNameOnCard(String nameOnCard)
   {
      this.nameOnCard = nameOnCard;
   }

}
