package de.aflx.sardine.model;

import org.simpleframework.xml.Element;

public class Resourcetype
{
  @Element(required=false)
  private Collection collection;
  
  public Collection getCollection()
  {
    return collection;
  }
  
  public void setCollection(Collection paramCollection)
  {
    collection = paramCollection;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Resourcetype
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */