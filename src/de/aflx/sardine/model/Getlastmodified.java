package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

public class Getlastmodified
{
  protected List<String> content;
  
  public List<String> getContent()
  {
    if (content == null) {
      content = new ArrayList();
    }
    return content;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Getlastmodified
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */