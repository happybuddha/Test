package src.com.cme.fiftyp.base;


public class BaseForm
{
   /**
    * used for filling combo boxes
    */
   protected String paramId;
   protected String order;
   protected String orderBy;
   protected String searchString;
   protected String pageNum;
   protected String totalItems;

   public String getPageNum()
   {
      return pageNum;
   }

   public void setPageNum(String pageNum)
   {
      this.pageNum = pageNum;
   }

   public String getOrder()
   {
      return order;
   }

   public void setOrder(String order)
   {
      this.order = order;
   }

   public String getOrderBy()
   {
      return orderBy;
   }

   public void setOrderBy(String orderBy)
   {
      this.orderBy = orderBy;
   }

   public String getParamId()
   {
      return paramId;
   }

   public void setParamId(String paramId)
   {
      this.paramId = paramId;
   }

   public String getSearchString()
   {
      return searchString;
   }

   public void setSearchString(String searchString)
   {
      this.searchString = searchString;
   }

   public String getTotalItems()
   {
      return totalItems;
   }

   public void setTotalItems(String totalItems)
   {
      this.totalItems = totalItems;
   }
}