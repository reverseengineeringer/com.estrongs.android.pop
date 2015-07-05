package org.simpleframework.xml.util;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map.Entry;

class Resolver$Cache
  extends LinkedHashMap<String, List<M>>
{
  public Resolver$Cache(Resolver paramResolver)
  {
    super(1024, 0.75F, false);
  }
  
  public boolean removeEldestEntry(Map.Entry paramEntry)
  {
    return size() > 1024;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Resolver.Cache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */