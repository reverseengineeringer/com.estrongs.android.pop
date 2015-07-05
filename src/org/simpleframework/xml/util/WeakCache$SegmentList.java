package org.simpleframework.xml.util;

import java.util.ArrayList;
import java.util.List;

class WeakCache$SegmentList
{
  private List<WeakCache<K, V>.Segment> list = new ArrayList();
  private int size;
  
  public WeakCache$SegmentList(WeakCache paramWeakCache, int paramInt)
  {
    size = paramInt;
    create(paramInt);
  }
  
  private void create(int paramInt)
  {
    for (;;)
    {
      if (paramInt <= 0) {
        return;
      }
      list.add(new WeakCache.Segment(this$0, null));
      paramInt -= 1;
    }
  }
  
  private int segment(K paramK)
  {
    return Math.abs(paramK.hashCode() % size);
  }
  
  public WeakCache<K, V>.Segment get(K paramK)
  {
    int i = segment(paramK);
    if (i < size) {
      return (WeakCache.Segment)list.get(i);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.util.WeakCache.SegmentList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */