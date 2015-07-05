package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

public class Source
{
  protected List<Link> link;
  
  public List<Link> getLink()
  {
    if (link == null) {
      link = new ArrayList();
    }
    return link;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Source
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */