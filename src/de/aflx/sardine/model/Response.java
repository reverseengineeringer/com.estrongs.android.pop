package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class Response
{
  @Element(required=false)
  protected Error error;
  @Element
  protected String href;
  @ElementList(inline=true, required=false)
  protected List<Propstat> propstat;
  @Element(required=false)
  protected String responsedescription;
  @Element(required=false)
  protected String status;
  
  public Error getError()
  {
    return error;
  }
  
  public String getHref()
  {
    if (href == null) {
      href = new String();
    }
    return href;
  }
  
  public Propstat getPropstat()
  {
    if (propstat == null) {
      propstat = new ArrayList();
    }
    if (propstat.size() > 0) {
      return (Propstat)propstat.get(0);
    }
    return null;
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
 * Qualified Name:     de.aflx.sardine.model.Response
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */