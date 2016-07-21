package com.facebook.ads.internal;

import android.content.Context;
import android.os.Looper;
import com.facebook.ads.internal.util.g;
import com.facebook.ads.internal.util.g.a;
import com.facebook.ads.internal.util.s;
import java.lang.reflect.Method;

public class f
{
  private final String a;
  private final boolean b;
  
  private f(String paramString, boolean paramBoolean)
  {
    a = paramString;
    b = paramBoolean;
  }
  
  public static f a(Context paramContext, g.a parama)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot get advertising info on main thread.");
    }
    if ((parama != null) && (!s.a(b))) {
      return new f(b, c);
    }
    parama = g.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
    if (parama == null) {
      return null;
    }
    parama = g.a(null, parama, new Object[] { paramContext });
    if ((parama == null) || (((Integer)parama).intValue() != 0)) {
      return null;
    }
    parama = g.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
    if (parama == null) {
      return null;
    }
    paramContext = g.a(null, parama, new Object[] { paramContext });
    if (paramContext == null) {
      return null;
    }
    parama = g.a(paramContext.getClass(), "getId", new Class[0]);
    Method localMethod = g.a(paramContext.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
    if ((parama == null) || (localMethod == null)) {
      return null;
    }
    return new f((String)g.a(paramContext, parama, new Object[0]), ((Boolean)g.a(paramContext, localMethod, new Object[0])).booleanValue());
  }
  
  public String a()
  {
    return a;
  }
  
  public boolean b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */