package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@me
public class bx
{
  private final Object a = new Object();
  private int b;
  private List<bw> c = new LinkedList();
  
  public bw a()
  {
    Object localObject1 = null;
    label146:
    label149:
    for (;;)
    {
      synchronized (a)
      {
        if (c.size() == 0)
        {
          b.a("Queue empty");
          return null;
        }
        if (c.size() >= 2)
        {
          int i = Integer.MIN_VALUE;
          Iterator localIterator = c.iterator();
          if (localIterator.hasNext())
          {
            bw localbw2 = (bw)localIterator.next();
            int j = localbw2.g();
            if (j <= i) {
              break label146;
            }
            localObject1 = localbw2;
            i = j;
            break label149;
          }
          c.remove(localObject1);
          return (bw)localObject1;
        }
      }
      bw localbw1 = (bw)c.get(0);
      localbw1.c();
      return localbw1;
    }
  }
  
  public boolean a(bw parambw)
  {
    synchronized (a)
    {
      return c.contains(parambw);
    }
  }
  
  public boolean b(bw parambw)
  {
    synchronized (a)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        bw localbw = (bw)localIterator.next();
        if ((parambw != localbw) && (localbw.b().equals(parambw.b())))
        {
          localIterator.remove();
          return true;
        }
      }
      return false;
    }
  }
  
  public void c(bw parambw)
  {
    synchronized (a)
    {
      if (c.size() >= 10)
      {
        b.a("Queue is full, current size = " + c.size());
        c.remove(0);
      }
      int i = b;
      b = (i + 1);
      parambw.a(i);
      c.add(parambw);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */