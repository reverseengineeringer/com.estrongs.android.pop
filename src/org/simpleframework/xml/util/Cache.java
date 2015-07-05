package org.simpleframework.xml.util;

public abstract interface Cache<K, V>
{
  public abstract void cache(K paramK, V paramV);
  
  public abstract boolean contains(K paramK);
  
  public abstract V fetch(K paramK);
  
  public abstract V take(K paramK);
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.Cache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */