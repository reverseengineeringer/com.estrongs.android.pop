package com.estrongs.android.cleaner.scandisk;

import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class ESConcurrentHashSet<E>
  extends AbstractSet<E>
  implements Serializable, Set<E>
{
  private static final long serialVersionUID = 3698200739536852961L;
  private final ConcurrentHashMap<E, Object> map;
  
  public ESConcurrentHashSet()
  {
    map = new ConcurrentHashMap();
  }
  
  public ESConcurrentHashSet(int paramInt)
  {
    map = new ConcurrentHashMap(paramInt);
  }
  
  public boolean add(E paramE)
  {
    return map.put(paramE, Boolean.TRUE) == null;
  }
  
  public void clear()
  {
    map.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return map.containsKey(paramObject);
  }
  
  public boolean isEmpty()
  {
    return map.isEmpty();
  }
  
  public Iterator<E> iterator()
  {
    return map.keySet().iterator();
  }
  
  public boolean remove(Object paramObject)
  {
    return map.remove(paramObject) == Boolean.TRUE;
  }
  
  public int size()
  {
    return map.size();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.ESConcurrentHashSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */