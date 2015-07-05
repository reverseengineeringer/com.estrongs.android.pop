package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

public class Locktoken
{
  protected List<String> href;
  
  public List<String> getHref()
  {
    if (href == null) {
      href = new ArrayList();
    }
    return href;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Locktoken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */