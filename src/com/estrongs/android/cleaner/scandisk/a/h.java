package com.estrongs.android.cleaner.scandisk.a;

import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.impl.q.a;
import com.estrongs.fs.j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public class h
  extends e
{
  private final String h = "Recycle";
  private final int i = 7;
  private AtomicInteger j = new AtomicInteger(0);
  private HashMap<String, com.estrongs.fs.h> k = null;
  
  public h(com.estrongs.android.cleaner.i parami, List<String> paramList)
  {
    super(parami, paramList, 2131231179);
  }
  
  private HashMap<String, com.estrongs.fs.h> g()
  {
    k = new HashMap();
    j localj = new j();
    Iterator localIterator = c().iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        Object localObject = (String)localIterator.next();
        try
        {
          localObject = a.a((String)localObject, localj, null);
          if (localObject != null)
          {
            localObject = ((List)localObject).iterator();
            while (((Iterator)localObject).hasNext())
            {
              com.estrongs.fs.h localh = (com.estrongs.fs.h)((Iterator)localObject).next();
              k.put(localh.getAbsolutePath(), localh);
            }
          }
        }
        catch (FileSystemException localFileSystemException)
        {
          localFileSystemException.printStackTrace();
        }
      }
    }
    return k;
  }
  
  public int a()
  {
    return 7;
  }
  
  protected com.estrongs.android.cleaner.h a(String paramString1, String paramString2)
  {
    com.estrongs.android.cleaner.h localh = new com.estrongs.android.cleaner.h(j.incrementAndGet(), c.b() + 1, c);
    localh.a(3);
    localh.b(7);
    localh.a(paramString2);
    localh.b(paramString1);
    localh.d(ap.d(paramString2));
    localh.c(2);
    return localh;
  }
  
  protected String a(String paramString)
  {
    if ((com.estrongs.fs.h)k.get(paramString) != null) {
      return paramString;
    }
    Iterator localIterator = k.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = (String)localEntry.getKey();
      if (paramString.startsWith(str))
      {
        paramString = (com.estrongs.fs.h)localEntry.getValue();
        return str;
      }
    }
    return null;
  }
  
  protected void a(com.estrongs.android.cleaner.h paramh, com.estrongs.android.cleaner.scandisk.i parami)
  {
    paramh.c(2);
    paramh.a(false);
    f.a(a, d, false);
  }
  
  protected boolean a(String paramString, com.estrongs.android.cleaner.scandisk.h paramh)
  {
    return false;
  }
  
  protected String b(String paramString)
  {
    return paramString;
  }
  
  public void b(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    for (;;)
    {
      try
      {
        if (k == null) {
          k = g();
        }
        if (a(b) != null) {
          break;
        }
        if (c != 3) {
          return;
        }
      }
      finally {}
      com.estrongs.android.cleaner.scandisk.i[] arrayOfi = f;
      int m = 0;
      while (m < g)
      {
        com.estrongs.android.cleaner.scandisk.i locali = arrayOfi[m];
        if (a(locali))
        {
          int n = b.incrementAndGet();
          l.c(f(), "recycle root file: " + a + ": " + d);
          com.estrongs.android.cleaner.h localh = new com.estrongs.android.cleaner.h(n, c.b() + 1, c);
          localh.a(4);
          localh.b(a());
          localh.b(b);
          localh.d(b);
          localh.a(a);
          localh.a(d);
          localh.c(e);
          localh.d(a);
          localh.c(e);
          a(localh, locali);
          Iterator localIterator = a.iterator();
          while (localIterator.hasNext()) {
            ((com.estrongs.android.cleaner.e)localIterator.next()).a(localh);
          }
          f = true;
          d = true;
        }
        m += 1;
      }
    }
    super.b(paramh);
  }
  
  protected boolean c(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    return true;
  }
  
  protected String f()
  {
    return "Recycle";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */