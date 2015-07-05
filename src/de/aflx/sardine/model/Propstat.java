package de.aflx.sardine.model;

import org.simpleframework.xml.Element;

public class Propstat
{
  @Element(required=false)
  protected Error error;
  @Element
  protected Prop prop;
  @Element(required=false)
  protected String responsedescription;
  @Element(required=false)
  protected String status;
  
  public Error getError()
  {
    return error;
  }
  
  public Prop getProp()
  {
    return prop;
  }
  
  public String getResponsedescription()
  {
    return responsedescription;
  }
  
  public String getStatus()
  {
    return status;
  }
  
  public void setError(Error paramError)
  {
    error = paramError;
  }
  
  public void setProp(Prop paramProp)
  {
    prop = paramProp;
  }
  
  public void setResponsedescription(String paramString)
  {
    responsedescription = paramString;
  }
  
  public void setStatus(String paramString)
  {
    status = paramString;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Propstat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */