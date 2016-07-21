package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@me
public class cw
{
  private final Collection<cr> a = new ArrayList();
  private final Collection<cr<String>> b = new ArrayList();
  private final Collection<cr<String>> c = new ArrayList();
  
  public List<String> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)((cr)localIterator.next()).c();
      if (str != null) {
        localArrayList.add(str);
      }
    }
    return localArrayList;
  }
  
  public void a(cr paramcr)
  {
    a.add(paramcr);
  }
  
  public void b(cr<String> paramcr)
  {
    b.add(paramcr);
  }
  
  public void c(cr<String> paramcr)
  {
    c.add(paramcr);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */