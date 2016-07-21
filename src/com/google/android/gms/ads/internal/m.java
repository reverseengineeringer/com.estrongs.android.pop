package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.qa;
import com.google.android.gms.internal.qb;
import java.util.List;

@me
public class m
  extends d
{
  private boolean i;
  
  public m(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, if paramif, VersionInfoParcel paramVersionInfoParcel)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramif, paramVersionInfoParcel, null);
  }
  
  private boolean b(ng paramng1, ng paramng2)
  {
    if (k) {}
    for (;;)
    {
      try
      {
        paramng2 = m.a();
        if (paramng2 == null)
        {
          b.e("View in mediation adapter is null.");
          return false;
        }
        paramng2 = (View)h.a(paramng2);
        View localView = c.f.getNextView();
        if (localView != null)
        {
          if ((localView instanceof qa)) {
            ((qa)localView).destroy();
          }
          c.f.removeView(localView);
        }
        if (r == null) {
          continue;
        }
      }
      catch (RemoteException paramng1)
      {
        try
        {
          a(paramng2);
          if (c.f.getChildCount() > 1) {
            c.f.showNext();
          }
          if (paramng1 != null)
          {
            paramng1 = c.f.getNextView();
            if (!(paramng1 instanceof qa)) {
              break label277;
            }
            ((qa)paramng1).a(c.c, c.i);
            c.d();
          }
          c.f.setVisibility(0);
          return true;
        }
        catch (Throwable paramng1)
        {
          b.d("Could not add mediation view to view hierarchy.", paramng1);
          return false;
        }
        paramng1 = paramng1;
        b.d("Could not get View from mediation adapter.", paramng1);
        return false;
      }
      if (b != null)
      {
        b.a(r);
        c.f.removeAllViews();
        c.f.setMinimumWidth(r.h);
        c.f.setMinimumHeight(r.e);
        a(b.getWebView());
        continue;
        label277:
        if (paramng1 != null) {
          c.f.removeView(paramng1);
        }
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    bn.b("setManualImpressionsEnabled must be called from the main thread.");
    i = paramBoolean;
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel)
  {
    return super.a(d(paramAdRequestParcel));
  }
  
  public boolean a(ng paramng1, ng paramng2)
  {
    if (!super.a(paramng1, paramng2)) {
      return false;
    }
    if ((c.e()) && (!b(paramng1, paramng2)))
    {
      a(0);
      return false;
    }
    a(paramng2, false);
    if (c.e()) {
      if (b != null)
      {
        if (j != null) {
          e.a(c.i, paramng2);
        }
        if (!paramng2.a()) {
          break label115;
        }
        e.a(c.i, paramng2).a(b);
      }
    }
    for (;;)
    {
      return true;
      label115:
      b.i().a(new n(this, paramng2));
      continue;
      if ((c.B != null) && (j != null)) {
        e.a(c.i, paramng2, c.B);
      }
    }
  }
  
  AdRequestParcel d(AdRequestParcel paramAdRequestParcel)
  {
    if (i == i) {
      return paramAdRequestParcel;
    }
    int j = b;
    long l = c;
    Bundle localBundle = d;
    int k = e;
    List localList = f;
    boolean bool2 = g;
    int m = h;
    if ((i) || (i)) {}
    for (boolean bool1 = true;; bool1 = false) {
      return new AdRequestParcel(j, l, localBundle, k, localList, bool2, m, bool1, j, k, l, m, n, o, p, q, r);
    }
  }
  
  public void g()
  {
    throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
  }
  
  protected boolean s()
  {
    boolean bool = true;
    if (!ae.e().a(c.c.getPackageManager(), c.c.getPackageName(), "android.permission.INTERNET"))
    {
      com.google.android.gms.ads.internal.client.m.a().a(c.f, c.i, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
      bool = false;
    }
    if (!ae.e().a(c.c))
    {
      com.google.android.gms.ads.internal.client.m.a().a(c.f, c.i, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
      bool = false;
    }
    if ((!bool) && (c.f != null)) {
      c.f.setVisibility(0);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */