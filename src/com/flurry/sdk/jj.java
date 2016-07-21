package com.flurry.sdk;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.Looper;
import android.text.TextUtils;

public class jj
  implements ll.a
{
  private static jj a;
  private static final String b = jj.class.getSimpleName();
  private final int c = 3;
  private final long d = 10000L;
  private final long e = 90000L;
  private final long f = 0L;
  private boolean g;
  private Location h;
  private long i = 0L;
  private LocationManager j = (LocationManager)js.a().c().getSystemService("location");
  private jj.a k = new jj.a(this);
  private Location l;
  private boolean m = false;
  private int n = 0;
  private kb<ln> o = new jj.1(this);
  
  private jj()
  {
    lk locallk = lk.a();
    g = ((Boolean)locallk.a("ReportLocation")).booleanValue();
    locallk.a("ReportLocation", this);
    kg.a(4, b, "initSettings, ReportLocation = " + g);
    h = ((Location)locallk.a("ExplicitLocation"));
    locallk.a("ExplicitLocation", this);
    kg.a(4, b, "initSettings, ExplicitLocation = " + h);
  }
  
  public static jj a()
  {
    try
    {
      if (a == null) {
        a = new jj();
      }
      jj localjj = a;
      return localjj;
    }
    finally {}
  }
  
  private void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      j.requestLocationUpdates(paramString, 10000L, 0.0F, k, Looper.getMainLooper());
    }
  }
  
  private boolean a(Context paramContext)
  {
    return paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
  }
  
  private Location b(String paramString)
  {
    Location localLocation = null;
    if (!TextUtils.isEmpty(paramString)) {
      localLocation = j.getLastKnownLocation(paramString);
    }
    return localLocation;
  }
  
  public static void b()
  {
    if (a != null)
    {
      lk.a().b("ReportLocation", a);
      lk.a().b("ExplicitLocation", a);
    }
    a = null;
  }
  
  private boolean b(Context paramContext)
  {
    return paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
  }
  
  private void g()
  {
    if (m) {}
    Context localContext;
    do
    {
      do
      {
        return;
      } while ((!g) || (h != null));
      localContext = js.a().c();
    } while ((localContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) && (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0));
    n = 0;
    String str = null;
    if (a(localContext)) {
      str = i();
    }
    for (;;)
    {
      a(str);
      l = b(str);
      i = (System.currentTimeMillis() + 90000L);
      k();
      m = true;
      kg.a(4, b, "LocationProvider started");
      return;
      if (b(localContext)) {
        str = j();
      }
    }
  }
  
  private void h()
  {
    if (!m) {
      return;
    }
    j.removeUpdates(k);
    n = 0;
    i = 0L;
    l();
    m = false;
    kg.a(4, b, "LocationProvider stopped");
  }
  
  private String i()
  {
    return "passive";
  }
  
  private String j()
  {
    return "network";
  }
  
  private void k()
  {
    kg.a(4, b, "Register location timer");
    lo.a().a(o);
  }
  
  private void l()
  {
    kg.a(4, b, "Unregister location timer");
    lo.a().b(o);
  }
  
  public void a(String paramString, Object paramObject)
  {
    int i1 = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        kg.a(6, b, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key.");
        return;
        if (paramString.equals("ReportLocation"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("ExplicitLocation")) {
            i1 = 1;
          }
        }
        break;
      }
    }
    g = ((Boolean)paramObject).booleanValue();
    kg.a(4, b, "onSettingUpdate, ReportLocation = " + g);
    return;
    h = ((Location)paramObject);
    kg.a(4, b, "onSettingUpdate, ExplicitLocation = " + h);
  }
  
  public void c()
  {
    try
    {
      kg.a(4, b, "Location update requested");
      if (n < 3) {
        g();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void d()
  {
    try
    {
      kg.a(4, b, "Stop update location requested");
      h();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Location e()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    if (h != null) {
      localObject1 = h;
    }
    Object localObject2;
    do
    {
      return (Location)localObject1;
      localObject2 = localObject3;
      if (!g) {
        break;
      }
      localObject2 = js.a().c();
    } while ((!a((Context)localObject2)) && (!b((Context)localObject2)));
    if (a((Context)localObject2)) {
      localObject1 = i();
    }
    for (;;)
    {
      localObject2 = localObject3;
      if (localObject1 != null)
      {
        localObject1 = b((String)localObject1);
        if (localObject1 != null) {
          l = ((Location)localObject1);
        }
        localObject2 = l;
      }
      kg.a(4, b, "getLocation() = " + localObject2);
      return (Location)localObject2;
      if (b((Context)localObject2)) {
        localObject1 = j();
      } else {
        localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.jj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */