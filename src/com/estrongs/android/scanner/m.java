package com.estrongs.android.scanner;

import com.estrongs.android.scanner.a.a;
import com.estrongs.android.scanner.a.f;
import com.estrongs.android.scanner.a.g;
import java.util.Iterator;
import java.util.List;

class m
  implements Runnable
{
  m(l paraml) {}
  
  public void run()
  {
    Iterator localIterator = l.a(a).iterator();
    Object localObject;
    while (localIterator.hasNext())
    {
      localObject = (g)localIterator.next();
      l.b(a).a((g)localObject);
    }
    localIterator = l.c(a).iterator();
    while (localIterator.hasNext())
    {
      localObject = (a)localIterator.next();
      l.b(a).a((a)localObject);
    }
    localIterator = l.d(a).iterator();
    while (localIterator.hasNext())
    {
      localObject = (f)localIterator.next();
      l.b(a).a((f)localObject);
    }
    l.a(a).clear();
    l.c(a).clear();
    l.d(a).clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */