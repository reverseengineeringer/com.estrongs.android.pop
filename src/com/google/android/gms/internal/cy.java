package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.common.GooglePlayServicesUtil;

@me
public class cy
{
  private final Object a = new Object();
  private boolean b = false;
  private SharedPreferences c = null;
  
  public <T> T a(cr<T> paramcr)
  {
    synchronized (a)
    {
      if (!b)
      {
        paramcr = paramcr.b();
        return paramcr;
      }
      return (T)paramcr.a(c);
    }
  }
  
  public void a(Context paramContext)
  {
    synchronized (a)
    {
      if (b) {
        return;
      }
      paramContext = GooglePlayServicesUtil.getRemoteContext(paramContext);
      if (paramContext == null) {
        return;
      }
    }
    c = ae.l().a(paramContext);
    b = true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */