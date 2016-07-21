package com.estrongs.android.scanner.b;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import android.util.Pair;
import com.estrongs.android.a.l;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.scanner.x;
import com.estrongs.android.util.ap;
import com.estrongs.fs.h;
import com.estrongs.fs.impl.c.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

public class b
{
  private static b f;
  private final String a = "LogMatcher";
  private final List<String> b;
  private final List<Pair<String, Integer>> c;
  private volatile c d;
  private volatile c e;
  private final AtomicBoolean g;
  private final CountDownLatch h;
  
  private b()
  {
    Object localObject = x.a();
    c = new ArrayList(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      c.add(new Pair(str, Integer.valueOf(str.length() - 1)));
    }
    b = new ArrayList();
    g = new AtomicBoolean(false);
    h = new CountDownLatch(1);
  }
  
  public static b a()
  {
    if (f == null) {
      f = new b();
    }
    return f;
  }
  
  private final void e()
  {
    Iterator localIterator = x.a().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      b.add(str + "android/data/");
      b.add(str + ".wbadcache/");
      b.add(str + "sina/weibo/.log/");
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    try
    {
      e.a(paramString1, paramString2);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public final boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return true;
      Object localObject = b.iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (paramString.toLowerCase().startsWith(str)) {
          return true;
        }
      }
      localObject = a.b(paramString);
      if (((Boolean)first).booleanValue())
      {
        if (!((Boolean)second).booleanValue()) {}
        for (boolean bool = true;; bool = false) {
          return bool;
        }
      }
      paramString = a.c(paramString);
      if (!((Boolean)first).booleanValue()) {
        break;
      }
    } while (!((Boolean)second).booleanValue());
    return false;
    return false;
  }
  
  public final String b(String paramString)
  {
    String str = ap.bB(paramString);
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      if (paramString.startsWith((String)first))
      {
        if (str.equalsIgnoreCase((String)first)) {
          return "SDCards";
        }
        paramString = paramString.substring(((Integer)second).intValue());
        return d.a(paramString);
      }
    }
    return null;
  }
  
  public final void b()
  {
    c localc = new c();
    localc.a("/dcim/camera/", "DCIM");
    localc.a("/pictures/screenshots/", "Screenshots");
    localc.a("/backups/", "Backups");
    localc.a("/download/", "Download");
    localc.a("/movies/", "Movies");
    localc.a("/video/", "Video");
    localc.a("/music/", "Music");
    localc.a("/ringtones/", "Ringtones");
    String str1 = ad.a(FexApplication.a()).A();
    Iterator localIterator = x.a().iterator();
    while (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      if (str1.startsWith(str2))
      {
        str2 = str1.substring(str2.length() - 1);
        if (!str2.equalsIgnoreCase("/download/")) {
          localc.a(str2, "Download");
        }
      }
    }
    d = localc;
  }
  
  public final String c(String paramString)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      Pair localPair = (Pair)localIterator.next();
      if (paramString.startsWith((String)first))
      {
        paramString = paramString.substring(((Integer)second).intValue());
        return d.a(paramString);
      }
    }
    return null;
  }
  
  public final void c()
  {
    c localc = new c();
    Object localObject1 = l.k();
    if (localObject1 != null)
    {
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = (h)((Iterator)localObject1).next();
        if ((localObject2 instanceof d))
        {
          Object localObject3 = (d)localObject2;
          localObject2 = a.packageName;
          localObject3 = b.iterator();
          while (((Iterator)localObject3).hasNext()) {
            localc.a(((com.estrongs.fs.impl.c.b)((Iterator)localObject3).next()).getAbsolutePath(), (String)localObject2);
          }
        }
      }
      e = localc;
    }
  }
  
  public final String d(String paramString)
  {
    return e.a(paramString);
  }
  
  public final void d()
  {
    if (g.compareAndSet(false, true))
    {
      e();
      b();
      c();
      h.countDown();
    }
    try
    {
      h.await();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */