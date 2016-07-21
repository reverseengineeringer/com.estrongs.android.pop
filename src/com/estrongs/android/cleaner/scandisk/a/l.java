package com.estrongs.android.cleaner.scandisk.a;

import com.estrongs.android.cleaner.j;
import com.estrongs.android.util.ap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class l
  extends e
{
  private final String h = "Thumbnails";
  private final int i = 8;
  private AtomicInteger j = new AtomicInteger(0);
  
  public l(com.estrongs.android.cleaner.i parami, List<String> paramList)
  {
    super(parami, paramList, 2131231180);
  }
  
  public int a()
  {
    return 8;
  }
  
  protected com.estrongs.android.cleaner.h a(String paramString1, String paramString2)
  {
    com.estrongs.android.cleaner.h localh = c;
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      paramString2 = (String)localIterator.next();
      if (paramString2.equals(paramString1))
      {
        paramString1 = new com.estrongs.android.cleaner.h(j.incrementAndGet(), c.b() + 1, c);
        paramString1.a(7);
        paramString1.b(8);
        paramString1.a(paramString2);
        paramString1.b(ap.d(paramString2));
        paramString1.c(1);
        paramString1.c(j.a(paramString2));
        paramString1.d(ap.d(paramString2));
        return paramString1;
      }
    }
    return localh;
  }
  
  protected String a(String paramString)
  {
    Iterator localIterator = c().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (ap.i(str, paramString)) {
        return str;
      }
    }
    return null;
  }
  
  protected void a(com.estrongs.android.cleaner.h paramh, com.estrongs.android.cleaner.scandisk.i parami)
  {
    paramh.c(1);
    paramh.a(true);
    f.a(a, d, true);
  }
  
  protected boolean a(com.estrongs.android.cleaner.scandisk.i parami)
  {
    return true;
  }
  
  protected boolean a(String paramString, com.estrongs.android.cleaner.scandisk.h paramh)
  {
    return false;
  }
  
  protected String b(String paramString)
  {
    return paramString;
  }
  
  protected boolean c(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    return c != 2;
  }
  
  public String f()
  {
    return "Thumbnails";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */