package com.estrongs.android.cleaner.scandisk;

import com.estrongs.android.cleaner.f;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class g
{
  private List<f> a = new LinkedList();
  private f b;
  
  public g()
  {
    this(null, null);
  }
  
  public g(f paramf)
  {
    this(null, paramf);
  }
  
  public g(f paramf1, f paramf2)
  {
    b = paramf2;
  }
  
  public void a(f paramf)
  {
    if (paramf == null) {}
    for (;;)
    {
      return;
      try
      {
        if (a.contains(paramf)) {
          continue;
        }
        a.add(paramf);
      }
      finally {}
    }
  }
  
  public void a(h paramh)
  {
    if (paramh == null) {}
    do
    {
      return;
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        ((f)localIterator.next()).a(paramh);
      }
    } while (b == null);
    b.a(paramh);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */