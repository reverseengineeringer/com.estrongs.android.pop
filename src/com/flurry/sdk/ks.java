package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class ks<ReportInfo extends kr>
{
  private static final String a = ks.class.getSimpleName();
  private static long b = 10000L;
  private final int c = Integer.MAX_VALUE;
  private final jz<List<ReportInfo>> d;
  private final List<ReportInfo> e = new ArrayList();
  private boolean f;
  private int g;
  private long h;
  private final Runnable i = new ks.1(this);
  private final kb<jk> j = new ks.2(this);
  
  public ks()
  {
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", j);
    d = a();
    h = b;
    g = -1;
    js.a().b(new ks.3(this));
  }
  
  private void b()
  {
    for (;;)
    {
      try
      {
        boolean bool = f;
        if (bool) {
          return;
        }
        if (g >= 0)
        {
          kg.a(3, a, "Transmit is in progress");
          continue;
        }
        h();
      }
      finally {}
      if (e.isEmpty())
      {
        h = b;
        g = -1;
      }
      else
      {
        g = 0;
        js.a().b(new ks.8(this));
      }
    }
  }
  
  private void f()
  {
    label101:
    for (;;)
    {
      try
      {
        lt.b();
        Object localObject1;
        if (jl.a().c())
        {
          if (g >= e.size()) {
            break label101;
          }
          localObject1 = e;
          int k = g;
          g = (k + 1);
          localObject1 = (kr)((List)localObject1).get(k);
          if (((kr)localObject1).q()) {
            continue;
          }
          if (localObject1 == null) {
            g();
          }
        }
        else
        {
          kg.a(3, a, "Network is not available, aborting transmission");
          break label101;
        }
        a((kr)localObject1);
        continue;
        Object localObject3 = null;
      }
      finally {}
    }
  }
  
  private void g()
  {
    for (;;)
    {
      try
      {
        h();
        a(e);
        if (f)
        {
          kg.a(3, a, "Reporter paused");
          h = b;
          g = -1;
          return;
        }
        if (e.isEmpty())
        {
          kg.a(3, a, "All reports sent successfully");
          h = b;
          continue;
        }
        h <<= 1;
      }
      finally {}
      kg.a(3, a, "One or more reports failed to send, backing off: " + h + "ms");
      js.a().b(i, h);
    }
  }
  
  private void h()
  {
    for (;;)
    {
      kr localkr;
      try
      {
        Iterator localIterator = e.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localkr = (kr)localIterator.next();
        if (localkr.q())
        {
          kg.a(3, a, "Url transmitted - " + localkr.s() + " Attempts: " + localkr.r());
          localIterator.remove();
          continue;
        }
        if (localkr.r() <= localkr.d()) {
          break label154;
        }
      }
      finally {}
      kg.a(3, a, "Exceeded max no of attempts - " + localkr.s() + " Attempts: " + localkr.r());
      ((Iterator)localObject).remove();
      continue;
      label154:
      if ((System.currentTimeMillis() > localkr.p()) && (localkr.r() > 0))
      {
        kg.a(3, a, "Expired: Time expired - " + localkr.s() + " Attempts: " + localkr.r());
        ((Iterator)localObject).remove();
      }
    }
  }
  
  private void i()
  {
    kc.a().b("com.flurry.android.sdk.NetworkStateEvent", j);
  }
  
  protected abstract jz<List<ReportInfo>> a();
  
  public void a(long paramLong)
  {
    b = paramLong;
    h = b;
  }
  
  protected abstract void a(ReportInfo paramReportInfo);
  
  protected void a(List<ReportInfo> paramList)
  {
    try
    {
      lt.b();
      paramList = new ArrayList(paramList);
      d.a(paramList);
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public void b(ReportInfo paramReportInfo)
  {
    if (paramReportInfo == null) {}
    for (;;)
    {
      return;
      try
      {
        e.add(paramReportInfo);
        js.a().b(new ks.5(this));
      }
      finally {}
    }
  }
  
  protected void b(List<ReportInfo> paramList)
  {
    try
    {
      lt.b();
      List localList = (List)d.a();
      if (localList != null) {
        paramList.addAll(localList);
      }
      return;
    }
    finally {}
  }
  
  public void c()
  {
    js.a().c(i);
    i();
  }
  
  protected void c(ReportInfo paramReportInfo)
  {
    try
    {
      paramReportInfo.b(true);
      js.a().b(new ks.6(this));
      return;
    }
    finally
    {
      paramReportInfo = finally;
      throw paramReportInfo;
    }
  }
  
  public void d()
  {
    f = true;
  }
  
  protected void d(ReportInfo paramReportInfo)
  {
    try
    {
      paramReportInfo.a_();
      js.a().b(new ks.7(this));
      return;
    }
    finally
    {
      paramReportInfo = finally;
      throw paramReportInfo;
    }
  }
  
  public void e()
  {
    f = false;
    js.a().b(new ks.4(this));
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */