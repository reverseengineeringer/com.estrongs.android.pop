package org.simpleframework.xml.util;

import java.util.WeakHashMap;

class WeakCache$Segment
  extends WeakHashMap<K, V>
{
  private WeakCache$Segment(WeakCache paramWeakCache) {}
  
  public void cache(K paramK, V paramV)
  {
    try
    {
      put(paramK, paramV);
      return;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
  
  public boolean contains(K paramK)
  {
    try
    {
      boolean bool = containsKey(paramK);
      return bool;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
  
  public V fetch(K paramK)
  {
    try
    {
      paramK = get(paramK);
      return paramK;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
  
  public V take(K paramK)
  {
    try
    {
      paramK = remove(paramK);
      return paramK;
    }
    finally
    {
      paramK = finally;
      throw paramK;
    }
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.WeakCache.Segment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */