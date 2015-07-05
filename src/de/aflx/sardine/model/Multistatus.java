package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;
import org.simpleframework.xml.Root;

@Root
public class Multistatus
{
  @ElementList(inline=true)
  protected List<Response> response;
  @Element(required=false)
  protected String responsedescription;
  
  public List<Response> getResponse()
  {
    if (response == null) {
      response = new ArrayList();
    }
    return response;
  }
  
  public String getResponsedescription()
  {
    return responsedescription;
  }
  
  public void setResponsedescription(String paramString)
  {
    responsedescription = paramString;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Multistatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */