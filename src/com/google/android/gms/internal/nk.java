package com.google.android.gms.internal;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import java.util.concurrent.Future;

@me
public class nk
  implements ny
{
  private final Object a = new Object();
  private final String b;
  private final nl c;
  private at d;
  private BigInteger e = BigInteger.ONE;
  private final HashSet<ni> f = new HashSet();
  private final HashMap<String, nn> g = new HashMap();
  private boolean h = false;
  private boolean i = true;
  private int j = 0;
  private boolean k = false;
  private Context l;
  private VersionInfoParcel m;
  private dd n = null;
  private boolean o = true;
  private by p = null;
  private bz q = null;
  private bx r = null;
  private final LinkedList<Thread> s = new LinkedList();
  private final md t = null;
  private Boolean u = null;
  private String v;
  private boolean w = false;
  
  public nk(oe paramoe)
  {
    b = paramoe.c();
    c = new nl(b);
  }
  
  public Bundle a(Context paramContext, nm paramnm, String paramString)
  {
    Bundle localBundle;
    synchronized (a)
    {
      localBundle = new Bundle();
      localBundle.putBundle("app", c.a(paramContext, paramString));
      paramContext = new Bundle();
      paramString = g.keySet().iterator();
      if (paramString.hasNext())
      {
        String str = (String)paramString.next();
        paramContext.putBundle(str, ((nn)g.get(str)).a());
      }
    }
    localBundle.putBundle("slots", paramContext);
    paramContext = new ArrayList();
    paramString = f.iterator();
    while (paramString.hasNext()) {
      paramContext.add(((ni)paramString.next()).d());
    }
    localBundle.putParcelableArrayList("ads", paramContext);
    paramnm.a(f);
    f.clear();
    return localBundle;
  }
  
  public bz a(Context paramContext)
  {
    if ((!((Boolean)cz.J.c()).booleanValue()) || (!tm.c()) || (b())) {
      return null;
    }
    synchronized (a)
    {
      if (p == null)
      {
        if (!(paramContext instanceof Activity)) {
          return null;
        }
        p = new by((Application)paramContext.getApplicationContext(), (Activity)paramContext);
      }
      if (r == null) {
        r = new bx();
      }
      if (q == null) {
        q = new bz(p, r, new md(l, m, null, null));
      }
      q.a();
      paramContext = q;
      return paramContext;
    }
  }
  
  public String a()
  {
    return b;
  }
  
  public String a(int paramInt, String paramString)
  {
    if (m.f) {}
    for (Resources localResources = l.getResources(); localResources == null; localResources = GooglePlayServicesUtil.getRemoteResource(l)) {
      return paramString;
    }
    return localResources.getString(paramInt);
  }
  
  public Future a(Context paramContext, boolean paramBoolean)
  {
    synchronized (a)
    {
      if (paramBoolean != i)
      {
        i = paramBoolean;
        paramContext = ns.a(paramContext, paramBoolean);
        return paramContext;
      }
      return null;
    }
  }
  
  public void a(Context paramContext, VersionInfoParcel paramVersionInfoParcel)
  {
    synchronized (a)
    {
      if (!k)
      {
        l = paramContext.getApplicationContext();
        m = paramVersionInfoParcel;
        ns.a(paramContext, this);
        ns.b(paramContext, this);
        a(Thread.currentThread());
        v = ae.e().a(paramContext, c);
        d = new at(paramContext.getApplicationContext(), m, new gr(paramContext.getApplicationContext(), m, (String)cz.b.c()));
        m();
        ae.o().a(l);
        k = true;
      }
      return;
    }
  }
  
  public void a(Bundle paramBundle)
  {
    synchronized (a)
    {
      if (paramBundle.containsKey("use_https")) {}
      for (boolean bool = paramBundle.getBoolean("use_https");; bool = i)
      {
        i = bool;
        if (!paramBundle.containsKey("webview_cache_version")) {
          break;
        }
        i1 = paramBundle.getInt("webview_cache_version");
        j = i1;
        return;
      }
      int i1 = j;
    }
  }
  
  public void a(ni paramni)
  {
    synchronized (a)
    {
      f.add(paramni);
      return;
    }
  }
  
  public void a(Boolean paramBoolean)
  {
    synchronized (a)
    {
      u = paramBoolean;
      return;
    }
  }
  
  public void a(String paramString, nn paramnn)
  {
    synchronized (a)
    {
      g.put(paramString, paramnn);
      return;
    }
  }
  
  public void a(Thread paramThread)
  {
    md.a(l, paramThread, m);
  }
  
  public void a(Throwable paramThrowable, boolean paramBoolean)
  {
    new md(l, m, null, null).a(paramThrowable, paramBoolean);
  }
  
  public void a(HashSet<ni> paramHashSet)
  {
    synchronized (a)
    {
      f.addAll(paramHashSet);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (a)
    {
      o = paramBoolean;
      return;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    synchronized (a)
    {
      w = paramBoolean;
      return;
    }
  }
  
  public boolean b()
  {
    synchronized (a)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public String c()
  {
    synchronized (a)
    {
      String str = e.toString();
      e = e.add(BigInteger.ONE);
      return str;
    }
  }
  
  public nl d()
  {
    synchronized (a)
    {
      nl localnl = c;
      return localnl;
    }
  }
  
  public dd e()
  {
    synchronized (a)
    {
      dd localdd = n;
      return localdd;
    }
  }
  
  public boolean f()
  {
    synchronized (a)
    {
      boolean bool = h;
      h = true;
      return bool;
    }
  }
  
  public boolean g()
  {
    synchronized (a)
    {
      boolean bool = i;
      return bool;
    }
  }
  
  public String h()
  {
    synchronized (a)
    {
      String str = v;
      return str;
    }
  }
  
  public Boolean i()
  {
    synchronized (a)
    {
      Boolean localBoolean = u;
      return localBoolean;
    }
  }
  
  public at j()
  {
    return d;
  }
  
  public boolean k()
  {
    synchronized (a)
    {
      if (j < ((Integer)cz.X.c()).intValue())
      {
        j = ((Integer)cz.X.c()).intValue();
        ns.a(l, j);
        return true;
      }
      return false;
    }
  }
  
  public boolean l()
  {
    synchronized (a)
    {
      boolean bool = w;
      return bool;
    }
  }
  
  void m()
  {
    da localda = new da(l, m.c);
    try
    {
      n = ae.j().a(localda);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      b.d("Cannot initialize CSI reporter.", localIllegalArgumentException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */