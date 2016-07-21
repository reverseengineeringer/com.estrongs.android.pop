package com.dianxinos.library.notify.h;

import android.app.NotificationManager;
import android.content.Context;
import android.text.TextUtils;
import com.dianxinos.library.notify.data.i;
import com.dianxinos.library.notify.f.a;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class d
{
  private static void a(String paramString)
  {
    e.b(paramString);
    paramString = c.a().a(paramString);
    if ((paramString != null) && (f != null)) {
      com.dianxinos.library.notify.j.c.a(a.b(f.e(), a));
    }
  }
  
  private static void a(String paramString, boolean paramBoolean)
  {
    int i;
    if (b.d(paramString))
    {
      if (!paramBoolean) {
        break label62;
      }
      i = paramString.hashCode();
      com.dianxinos.library.notify.data.j localj = com.dianxinos.library.notify.c.a(paramString);
      if ((localj == null) || (!b.equals("uninstall"))) {
        break label69;
      }
      i = com.dianxinos.library.notify.b.a;
    }
    label62:
    label69:
    for (;;)
    {
      ((NotificationManager)com.dianxinos.library.notify.c.a().getSystemService("notification")).cancel(i);
      b.c(paramString);
      return;
      i = com.dianxinos.library.notify.b.a;
      break;
    }
  }
  
  public static void a(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (paramMap.isEmpty())) {}
    for (;;)
    {
      return;
      String str = (String)paramMap.get("lastModified");
      if (!TextUtils.isEmpty(str)) {
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("last modified is " + str);
        }
      }
      try
      {
        b.c(Long.valueOf(str).longValue());
        paramMap = (String)paramMap.get("strategy");
        if (TextUtils.isEmpty(paramMap)) {
          continue;
        }
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("stategy is " + paramMap);
        }
        b.b(paramMap);
        return;
      }
      catch (Throwable localThrowable)
      {
        for (;;) {}
      }
    }
  }
  
  public static void a(Map<String, String> paramMap, Set<String> paramSet)
  {
    Set localSet = e.a();
    String str1;
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        str1 = (String)paramSet.next();
        localSet.remove(str1);
        a(str1);
        a(str1, false);
      }
    }
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramSet = paramMap.keySet().iterator();
      while (paramSet.hasNext())
      {
        str1 = (String)paramSet.next();
        String str2 = (String)paramMap.get(str1);
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("notify item: " + str2);
        }
        localSet.add(str1);
        e.a(str1, str2);
      }
    }
    e.a(localSet);
  }
  
  public static void a(Set<String> paramSet)
  {
    if ((paramSet == null) || (paramSet.isEmpty())) {}
    for (;;)
    {
      return;
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        if (!b.d(str))
        {
          c.a().c(str);
          c.a().d(str);
        }
      }
    }
  }
  
  public static void b(Map<String, String> paramMap, Set<String> paramSet)
  {
    Set localSet = e.b();
    String str1;
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        str1 = (String)paramSet.next();
        localSet.remove(str1);
        a(str1);
      }
    }
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramSet = paramMap.keySet().iterator();
      while (paramSet.hasNext())
      {
        str1 = (String)paramSet.next();
        String str2 = (String)paramMap.get(str1);
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("spalsh item: " + str2);
        }
        localSet.add(str1);
        e.a(str1, str2);
      }
    }
    e.b(localSet);
  }
  
  public static void b(Set<String> paramSet)
  {
    if ((paramSet == null) || (paramSet.isEmpty())) {
      return;
    }
    Set localSet1 = e.a();
    Set localSet2 = e.c();
    Set localSet3 = e.b();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      String str = (String)paramSet.next();
      if (!b.d(str))
      {
        localSet1.remove(str);
        localSet2.remove(str);
        localSet3.remove(str);
        a(str);
      }
    }
    e.a(localSet1);
    e.c(localSet2);
    e.b(localSet3);
  }
  
  public static void c(Map<String, String> paramMap, Set<String> paramSet)
  {
    Set localSet = e.d();
    String str1;
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        str1 = (String)paramSet.next();
        localSet.remove(str1);
        a(str1);
      }
    }
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramSet = paramMap.keySet().iterator();
      while (paramSet.hasNext())
      {
        str1 = (String)paramSet.next();
        String str2 = (String)paramMap.get(str1);
        if (com.dianxinos.library.dxbase.e.c) {
          com.dianxinos.library.dxbase.j.b("data pipe item: " + str2);
        }
        localSet.add(str1);
        e.a(str1, str2);
      }
    }
    e.d(localSet);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.h.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */