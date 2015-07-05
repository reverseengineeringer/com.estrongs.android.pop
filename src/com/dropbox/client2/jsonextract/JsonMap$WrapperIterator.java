package com.dropbox.client2.jsonextract;

import java.util.Iterator;
import java.util.Map.Entry;

final class JsonMap$WrapperIterator
  implements Iterator<Map.Entry<String, JsonThing>>
{
  private final Iterator<Map.Entry<String, Object>> internal;
  private final String path;
  
  private JsonMap$WrapperIterator(String paramString, Iterator<Map.Entry<String, Object>> paramIterator)
  {
    path = paramString;
    internal = paramIterator;
  }
  
  public boolean hasNext()
  {
    return internal.hasNext();
  }
  
  public Map.Entry<String, JsonThing> next()
  {
    return new JsonMap.WrappedEntry(path, (Map.Entry)internal.next(), null);
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("can't remove");
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonMap.WrapperIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */