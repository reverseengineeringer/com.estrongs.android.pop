package org.simpleframework.xml.util;

public class WeakCache<K, V>
  implements Cache<K, V>
{
  private WeakCache<K, V>.SegmentList list;
  
  public WeakCache()
  {
    this(10);
  }
  
  public WeakCache(int paramInt)
  {
    list = new WeakCache.SegmentList(this, paramInt);
  }
  
  private WeakCache<K, V>.Segment map(K paramK)
  {
    return list.get(paramK);
  }
  
  public void cache(K paramK, V paramV)
  {
    map(paramK).cache(paramK, paramV);
  }
  
  public boolean contains(K paramK)
  {
    return map(paramK).contains(paramK);
  }
  
  public V fetch(K paramK)
  {
    return (V)map(paramK).fetch(paramK);
  }
  
  public V take(K paramK)
  {
    return (V)map(paramK).take(paramK);
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.WeakCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */