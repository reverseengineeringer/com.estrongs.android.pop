package com.estrongs.android.pop.netfs.utils;

import java.util.HashMap;

public class SizeHashCache<K, V>
{
  private HashMap<K, V> cache = null;
  private int cacheSize = 0;
  private int head = 0;
  private HashMap<Integer, K> hits = null;
  private int rear = 0;
  
  public SizeHashCache(int paramInt)
  {
    cacheSize = paramInt;
    cache = new HashMap();
    hits = new HashMap();
  }
  
  public void add(K paramK, V paramV)
  {
    if (cache.size() >= cacheSize)
    {
      Object localObject = hits.get(Integer.valueOf(head));
      cache.remove(localObject);
      head += 1;
      if (head >= cacheSize) {
        head = 0;
      }
    }
    cache.put(paramK, paramV);
    hits.put(Integer.valueOf(rear), paramK);
    rear += 1;
    if (rear >= cacheSize) {
      rear = 0;
    }
  }
  
  public void clear()
  {
    head = 0;
    rear = 0;
    hits.clear();
    cache.clear();
  }
  
  public V getValue(K paramK)
  {
    return (V)cache.get(paramK);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.SizeHashCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */