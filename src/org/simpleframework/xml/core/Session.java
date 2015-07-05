package org.simpleframework.xml.core;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

final class Session
  implements Map
{
  private final Map map = new HashMap();
  private final boolean strict;
  
  public Session()
  {
    this(true);
  }
  
  public Session(boolean paramBoolean)
  {
    strict = paramBoolean;
  }
  
  public void clear()
  {
    map.clear();
  }
  
  public boolean containsKey(Object paramObject)
  {
    return map.containsKey(paramObject);
  }
  
  public boolean containsValue(Object paramObject)
  {
    return map.containsValue(paramObject);
  }
  
  public Set entrySet()
  {
    return map.entrySet();
  }
  
  public Object get(Object paramObject)
  {
    return map.get(paramObject);
  }
  
  public Map getMap()
  {
    return map;
  }
  
  public boolean isEmpty()
  {
    return map.isEmpty();
  }
  
  public boolean isStrict()
  {
    return strict;
  }
  
  public Set keySet()
  {
    return map.keySet();
  }
  
  public Object put(Object paramObject1, Object paramObject2)
  {
    return map.put(paramObject1, paramObject2);
  }
  
  public void putAll(Map paramMap)
  {
    map.putAll(paramMap);
  }
  
  public Object remove(Object paramObject)
  {
    return map.remove(paramObject);
  }
  
  public int size()
  {
    return map.size();
  }
  
  public Collection values()
  {
    return map.values();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.Session
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */