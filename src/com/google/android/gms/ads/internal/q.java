package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.em;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.ev;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.sz;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@me
public class q
  extends v
{
  private final Context a;
  private final com.google.android.gms.ads.internal.client.r b;
  private final if c;
  private final em d;
  private final ep e;
  private final sz<String, ev> f;
  private final sz<String, es> g;
  private final NativeAdOptionsParcel h;
  private final List<String> i;
  private final String j;
  private final VersionInfoParcel k;
  private WeakReference<w> l;
  private Object m = new Object();
  
  q(Context paramContext, String paramString, if paramif, VersionInfoParcel paramVersionInfoParcel, com.google.android.gms.ads.internal.client.r paramr, em paramem, ep paramep, sz<String, ev> paramsz, sz<String, es> paramsz1, NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    a = paramContext;
    j = paramString;
    c = paramif;
    k = paramVersionInfoParcel;
    b = paramr;
    e = paramep;
    d = paramem;
    f = paramsz;
    g = paramsz1;
    h = paramNativeAdOptionsParcel;
    i = d();
  }
  
  private List<String> d()
  {
    ArrayList localArrayList = new ArrayList();
    if (e != null) {
      localArrayList.add("1");
    }
    if (d != null) {
      localArrayList.add("2");
    }
    if (f.size() > 0) {
      localArrayList.add("3");
    }
    return localArrayList;
  }
  
  public String a()
  {
    for (;;)
    {
      synchronized (m)
      {
        if (l != null)
        {
          Object localObject1 = (w)l.get();
          if (localObject1 != null)
          {
            localObject1 = ((w)localObject1).k();
            return (String)localObject1;
          }
        }
        else
        {
          return null;
        }
      }
      Object localObject3 = null;
    }
  }
  
  public void a(AdRequestParcel paramAdRequestParcel)
  {
    a(new r(this, paramAdRequestParcel));
  }
  
  protected void a(Runnable paramRunnable)
  {
    oe.a.post(paramRunnable);
  }
  
  public boolean b()
  {
    for (;;)
    {
      synchronized (m)
      {
        if (l != null)
        {
          w localw = (w)l.get();
          if (localw != null)
          {
            bool = localw.l();
            return bool;
          }
        }
        else
        {
          return false;
        }
      }
      boolean bool = false;
    }
  }
  
  protected w c()
  {
    return new w(a, AdSizeParcel.a(a), j, c, k);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */