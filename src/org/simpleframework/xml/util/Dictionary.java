package org.simpleframework.xml.util;

import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;

public class Dictionary<E extends Entry>
  extends AbstractSet<E>
{
  protected Dictionary<E>.Table map = new Dictionary.Table(this);
  
  public boolean add(E paramE)
  {
    return map.put(paramE.getName(), paramE) != null;
  }
  
  public E get(String paramString)
  {
    return (Entry)map.get(paramString);
  }
  
  public Iterator<E> iterator()
  {
    return map.values().iterator();
  }
  
  public E remove(String paramString)
  {
    return (Entry)map.remove(paramString);
  }
  
  public int size()
  {
    return map.size();
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Dictionary
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */