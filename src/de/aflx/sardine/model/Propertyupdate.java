package de.aflx.sardine.model;

import java.util.ArrayList;
import java.util.List;

public class Propertyupdate
{
  protected List<Object> removeOrSet;
  
  public List<Object> getRemoveOrSet()
  {
    if (removeOrSet == null) {
      removeOrSet = new ArrayList();
    }
    return removeOrSet;
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.model.Propertyupdate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */