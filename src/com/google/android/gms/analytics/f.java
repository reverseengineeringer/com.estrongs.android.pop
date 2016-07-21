package com.google.android.gms.analytics;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.analytics.internal.ab;
import com.google.android.gms.analytics.internal.at;
import com.google.android.gms.analytics.internal.bh;
import com.google.android.gms.analytics.internal.bi;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.s;
import com.google.android.gms.common.internal.bn;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class f
  extends n
{
  private static List<Runnable> b = new ArrayList();
  private boolean c;
  private boolean d;
  private Set<Object> e = new HashSet();
  private boolean f;
  private volatile boolean g;
  private boolean h;
  
  public f(ab paramab)
  {
    super(paramab);
  }
  
  public static f a(Context paramContext)
  {
    return ab.a(paramContext).k();
  }
  
  public static void d()
  {
    try
    {
      if (b != null)
      {
        Iterator localIterator = b.iterator();
        while (localIterator.hasNext()) {
          ((Runnable)localIterator.next()).run();
        }
        b = null;
      }
    }
    finally {}
  }
  
  private s n()
  {
    return i().l();
  }
  
  public k a(String paramString)
  {
    try
    {
      paramString = new k(i(), paramString, null);
      paramString.E();
      return paramString;
    }
    finally {}
  }
  
  public void a()
  {
    b();
    c = true;
  }
  
  @Deprecated
  public void a(j paramj)
  {
    i.a(paramj);
    if (!h)
    {
      Log.i((String)bh.c.a(), "GoogleAnalytics.setLogger() is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag." + (String)bh.c.a() + " DEBUG");
      h = true;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  void b()
  {
    s locals = n();
    if (locals.d()) {
      g().a(locals.e());
    }
    if (locals.h()) {
      a(locals.i());
    }
    if (locals.d())
    {
      j localj = i.a();
      if (localj != null) {
        localj.a(locals.e());
      }
    }
  }
  
  public boolean c()
  {
    return (c) && (!d);
  }
  
  public boolean e()
  {
    return f;
  }
  
  public boolean f()
  {
    return g;
  }
  
  @Deprecated
  public j g()
  {
    return i.a();
  }
  
  public String h()
  {
    bn.c("getClientId can not be called from the main thread");
    return i().p().b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */