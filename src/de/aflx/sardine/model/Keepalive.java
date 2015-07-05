package de.aflx.sardine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Keepalive
{
  protected List<Serializable> content;
  
  public List<Serializable> getContent()
  {
    if (content == null) {
      content = new ArrayList();
    }
    return content;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Keepalive
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */