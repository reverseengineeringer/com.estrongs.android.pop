package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

public class Owner
{
  protected List<Object> content;
  
  public List<Object> getContent()
  {
    if (content == null) {
      content = new ArrayList();
    }
    return content;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Owner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */