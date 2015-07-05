package com.dropbox.client2.jsonextract;

import java.util.Iterator;

final class JsonList$WrapperIterator
  implements Iterator<JsonThing>
{
  private final Iterator<Object> internal;
  private int numReturned = 0;
  private final String path;
  
  private JsonList$WrapperIterator(String paramString, Iterator<Object> paramIterator)
  {
    path = paramString;
    internal = paramIterator;
  }
  
  public boolean hasNext()
  {
    return internal.hasNext();
  }
  
  public JsonThing next()
  {
    int i = numReturned;
    numReturned = (i + 1);
    return new JsonThing(internal.next(), JsonList.access$1(path, i));
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("can't remove");
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.jsonextract.JsonList.WrapperIterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */