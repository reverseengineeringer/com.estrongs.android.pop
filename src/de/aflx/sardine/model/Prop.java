package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.ElementList;

public class Prop
{
  @Element(required=false)
  protected List<Element> any;
  @Element(required=false)
  private String creationdate;
  @Element(required=false)
  private String getcontentlength;
  @ElementList(entry="getcontenttype", inline=true, required=false)
  private List<String> getcontenttype;
  @Element(required=false)
  private String getetag;
  @Element(required=false)
  private String getlastmodified;
  @Element(required=false)
  private Resourcetype resourcetype;
  
  public List<Element> getAny()
  {
    if (any == null) {
      any = new ArrayList();
    }
    return any;
  }
  
  public String getCreationdate()
  {
    return creationdate;
  }
  
  public String getGetcontentlength()
  {
    return getcontentlength;
  }
  
  public String getGetcontenttype()
  {
    if ((getcontenttype == null) || (getcontenttype.size() == 0)) {
      return null;
    }
    return (String)getcontenttype.get(getcontenttype.size() - 1);
  }
  
  public String getGetetag()
  {
    return getetag;
  }
  
  public String getGetlastmodified()
  {
    return getlastmodified;
  }
  
  public Resourcetype getResourcetype()
  {
    return resourcetype;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Prop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */