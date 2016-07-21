package com.estrongs.android.ui.topclassify;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Handler;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.b.d;
import com.estrongs.android.scanner.a;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class f
{
  private final com.estrongs.android.scanner.h a;
  private Context b;
  private List<Integer> c;
  private l d;
  private boolean e;
  private Map<Integer, k> f;
  private Handler g = new g(this);
  
  public f(Context paramContext)
  {
    b = paramContext;
    c();
    a = new h(this);
    if (FexApplication.a)
    {
      a.a().a(a);
      return;
    }
    d.a(new i(this));
  }
  
  private int a(long paramLong)
  {
    Iterator localIterator = FexApplication.a().b(8192).iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      PackageInfo localPackageInfo = (PackageInfo)localIterator.next();
      long l2 = firstInstallTime;
      long l1 = l2;
      if (l2 <= 0L) {
        l1 = lastUpdateTime;
      }
      if (l1 < paramLong) {
        break label81;
      }
      i += 1;
    }
    label81:
    for (;;)
    {
      break;
      return i;
    }
  }
  
  private long a(int paramInt)
  {
    long l2 = ad.a(b).f(paramInt);
    long l1 = l2;
    if (l2 == -1L) {
      l1 = new Date().getTime() - 259200000L;
    }
    return l1;
  }
  
  private void c()
  {
    c = new ArrayList();
    c.add(Integer.valueOf(20165));
    c.add(Integer.valueOf(5));
    c.add(Integer.valueOf(7));
    c.add(Integer.valueOf(1));
    c.add(Integer.valueOf(2));
    c.add(Integer.valueOf(3));
    c.add(Integer.valueOf(4));
  }
  
  public void a()
  {
    a.a().b(a);
  }
  
  public void a(l paraml)
  {
    d = paraml;
  }
  
  public void b()
  {
    e = true;
    new j(this, a(a(4))).start();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.topclassify.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */