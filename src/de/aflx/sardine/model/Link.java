package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

public class Link
{
  protected List<String> dst;
  protected List<String> src;
  
  public List<String> getDst()
  {
    if (dst == null) {
      dst = new ArrayList();
    }
    return dst;
  }
  
  public List<String> getSrc()
  {
    if (src == null) {
      src = new ArrayList();
    }
    return src;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Link
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */