package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

@me
public class at
  implements bg
{
  private final Object a = new Object();
  private final WeakHashMap<ng, au> b = new WeakHashMap();
  private final ArrayList<au> c = new ArrayList();
  private final Context d;
  private final VersionInfoParcel e;
  private final gr f;
  
  public at(Context paramContext, VersionInfoParcel paramVersionInfoParcel, gr paramgr)
  {
    d = paramContext.getApplicationContext();
    e = paramVersionInfoParcel;
    f = paramgr;
  }
  
  public au a(AdSizeParcel paramAdSizeParcel, ng paramng)
  {
    return a(paramAdSizeParcel, paramng, b.getWebView());
  }
  
  public au a(AdSizeParcel paramAdSizeParcel, ng paramng, View paramView)
  {
    synchronized (a)
    {
      if (a(paramng))
      {
        paramAdSizeParcel = (au)b.get(paramng);
        return paramAdSizeParcel;
      }
      paramAdSizeParcel = new au(paramAdSizeParcel, paramng, e, paramView, f);
      paramAdSizeParcel.a(this);
      b.put(paramng, paramAdSizeParcel);
      c.add(paramAdSizeParcel);
      return paramAdSizeParcel;
    }
  }
  
  public void a(au paramau)
  {
    synchronized (a)
    {
      if (!paramau.f())
      {
        c.remove(paramau);
        Iterator localIterator = b.entrySet().iterator();
        while (localIterator.hasNext()) {
          if (((Map.Entry)localIterator.next()).getValue() == paramau) {
            localIterator.remove();
          }
        }
      }
    }
  }
  
  public boolean a(ng paramng)
  {
    for (;;)
    {
      synchronized (a)
      {
        paramng = (au)b.get(paramng);
        if ((paramng != null) && (paramng.f()))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void b(ng paramng)
  {
    synchronized (a)
    {
      paramng = (au)b.get(paramng);
      if (paramng != null) {
        paramng.d();
      }
      return;
    }
  }
  
  public void c(ng paramng)
  {
    synchronized (a)
    {
      paramng = (au)b.get(paramng);
      if (paramng != null) {
        paramng.l();
      }
      return;
    }
  }
  
  public void d(ng paramng)
  {
    synchronized (a)
    {
      paramng = (au)b.get(paramng);
      if (paramng != null) {
        paramng.m();
      }
      return;
    }
  }
  
  public void e(ng paramng)
  {
    synchronized (a)
    {
      paramng = (au)b.get(paramng);
      if (paramng != null) {
        paramng.n();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */