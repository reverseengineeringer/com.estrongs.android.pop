package com.estrongs.android.cleaner.scandisk.a;

import android.text.TextUtils;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.cleaner.scandisk.a;
import com.estrongs.android.pop.utils.cl;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class b
  extends e
{
  private final String h = "AD Junk";
  private final int i = 3;
  private AtomicInteger j = new AtomicInteger(0);
  private Set<String> k = l.keySet();
  private Map<String, com.estrongs.android.cleaner.scandisk.b> l = a.a();
  private ConcurrentHashMap<String, String> m = new ConcurrentHashMap();
  private boolean n = cl.a();
  
  public b(com.estrongs.android.cleaner.i parami, List<String> paramList)
  {
    super(parami, paramList, 2131231174);
  }
  
  private String c(String paramString)
  {
    paramString = (String)m.get(paramString);
    if (paramString != null)
    {
      paramString = (com.estrongs.android.cleaner.scandisk.b)l.get(paramString);
      if (paramString != null) {
        if (n) {
          paramString = c;
        }
      }
    }
    for (;;)
    {
      String str = paramString;
      if (TextUtils.isEmpty(paramString))
      {
        if (n) {
          str = "未知广告";
        }
      }
      else
      {
        return str;
        paramString = b;
        continue;
      }
      return "Unknown AD";
      paramString = null;
    }
  }
  
  public int a()
  {
    return 3;
  }
  
  protected com.estrongs.android.cleaner.h a(String paramString1, String paramString2)
  {
    com.estrongs.android.cleaner.h localh = new com.estrongs.android.cleaner.h(j.incrementAndGet(), c.b() + 1, c);
    localh.a(1);
    localh.b(3);
    localh.a(paramString2);
    localh.b(paramString1);
    localh.c(e);
    localh.c(1);
    localh.c(j.a(paramString2));
    localh.d(c(paramString2));
    return localh;
  }
  
  protected String a(String paramString)
  {
    Iterator localIterator = k.iterator();
    Object localObject1 = null;
    Object localObject2;
    String str;
    do
    {
      int i1;
      do
      {
        localObject2 = localObject1;
        if (!localIterator.hasNext()) {
          break;
        }
        str = (String)localIterator.next();
        i1 = paramString.indexOf(str);
      } while (i1 == -1);
      localObject2 = paramString.substring(0, i1) + str;
      localObject1 = localObject2;
    } while (new File((String)localObject2).isFile());
    m.put(localObject2, str);
    return (String)localObject2;
  }
  
  protected void a(com.estrongs.android.cleaner.h paramh, com.estrongs.android.cleaner.scandisk.i parami)
  {
    paramh.a(true);
    paramh.c(1);
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
  
  public void b(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    super.b(paramh);
  }
  
  protected String f()
  {
    return "AD Junk";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */