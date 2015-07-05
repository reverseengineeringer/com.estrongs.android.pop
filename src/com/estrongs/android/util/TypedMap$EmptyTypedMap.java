package com.estrongs.android.util;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;

public final class TypedMap$EmptyTypedMap
  extends TypedMap
{
  private static final long serialVersionUID = 1L;
  
  private Object readResolve()
  {
    return Collections.EMPTY_MAP;
  }
  
  public boolean containsKey(Object paramObject)
  {
    return false;
  }
  
  public boolean containsValue(Object paramObject)
  {
    return false;
  }
  
  public Set entrySet()
  {
    return Collections.EMPTY_SET;
  }
  
  public Object get(Object paramObject)
  {
    return null;
  }
  
  public Set keySet()
  {
    return Collections.EMPTY_SET;
  }
  
  public Collection values()
  {
    return Collections.EMPTY_LIST;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.util.TypedMap.EmptyTypedMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */