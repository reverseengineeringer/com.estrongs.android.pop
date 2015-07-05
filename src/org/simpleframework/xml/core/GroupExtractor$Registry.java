package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;

class GroupExtractor$Registry
  extends LinkedHashMap<Class, Label>
  implements Iterable<Label>
{
  private final LabelMap elements;
  
  public GroupExtractor$Registry(LabelMap paramLabelMap)
  {
    elements = paramLabelMap;
  }
  
  public Iterator<Label> iterator()
  {
    return values().iterator();
  }
  
  public void register(Class paramClass, Label paramLabel)
  {
    paramLabel = new CacheLabel(paramLabel);
    if (!containsKey(paramClass)) {
      put(paramClass, paramLabel);
    }
  }
  
  public void register(String paramString, Label paramLabel)
  {
    paramLabel = new CacheLabel(paramLabel);
    if (!elements.containsKey(paramString)) {
      elements.put(paramString, paramLabel);
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.GroupExtractor.Registry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */