package com.estrongs.android.pop.app.imageviewer.gallery;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

class LruCache$1
  extends LinkedHashMap<K, V>
{
  LruCache$1(g paramg, int paramInt1, float paramFloat, boolean paramBoolean, int paramInt2)
  {
    super(paramInt1, paramFloat, paramBoolean);
  }
  
  protected boolean removeEldestEntry(Map.Entry<K, V> paramEntry)
  {
    return size() > val$capacity;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.gallery.LruCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */