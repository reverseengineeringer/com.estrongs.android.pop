package org.simpleframework.xml.core;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

class PathParser$Cache
  extends LinkedHashMap<String, String>
{
  public PathParser$Cache(PathParser paramPathParser)
  {
    super(16, 0.75F, false);
  }
  
  public boolean removeEldestEntry(Map.Entry paramEntry)
  {
    return size() > 16;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.PathParser.Cache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */