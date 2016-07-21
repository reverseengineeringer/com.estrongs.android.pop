package com.estrongs.android.cleaner.scandisk.a;

import com.estrongs.android.util.ap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class e
  extends a
{
  protected Map<String, com.estrongs.android.cleaner.h> g = new ConcurrentHashMap();
  private final com.estrongs.android.cleaner.scandisk.e h = com.estrongs.android.cleaner.scandisk.e.a();
  
  public e(com.estrongs.android.cleaner.i parami, List<String> paramList, int paramInt)
  {
    super(parami, paramList, paramInt);
  }
  
  protected abstract com.estrongs.android.cleaner.h a(String paramString1, String paramString2);
  
  protected String a(String paramString)
  {
    String str = ap.bB(paramString);
    if (h.a(str)) {
      return paramString;
    }
    return h.b(paramString);
  }
  
  protected void a(com.estrongs.android.cleaner.scandisk.i parami, com.estrongs.android.cleaner.h paramh, long paramLong, boolean paramBoolean)
  {
    b.incrementAndGet();
    paramh = new com.estrongs.android.cleaner.h(b.get(), paramh.b() + 1, paramh);
    paramh.b(a());
    paramh.a(a);
    paramh.b(b);
    paramh.a(4);
    paramh.a(d);
    paramh.c(e);
    paramh.d(paramLong);
    paramh.c(paramBoolean);
    a(paramh, parami);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((com.estrongs.android.cleaner.e)localIterator.next()).a(paramh);
    }
    f = true;
  }
  
  protected boolean a(com.estrongs.android.cleaner.scandisk.i parami)
  {
    return true;
  }
  
  protected abstract boolean a(String paramString, com.estrongs.android.cleaner.scandisk.h paramh);
  
  protected String b(String paramString)
  {
    return paramString.substring(paramString.lastIndexOf("/") + 1, paramString.length());
  }
  
  public void b(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    String str = a(b);
    if (str == null) {}
    Object localObject;
    do
    {
      return;
      localObject = b(str);
    } while (a((String)localObject, paramh));
    d = true;
    com.estrongs.android.cleaner.h localh = (com.estrongs.android.cleaner.h)g.get(localObject);
    if (localh == null)
    {
      localh = a((String)localObject, str);
      g.put(localObject, localh);
    }
    for (;;)
    {
      localObject = f;
      int i = 0;
      while (i < g)
      {
        a(localObject[i], localh, a, e);
        i += 1;
      }
      break;
    }
  }
  
  protected boolean c(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    return c != 2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */