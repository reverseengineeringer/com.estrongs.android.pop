package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.dn;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.js;
import com.google.android.gms.internal.lk;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.oq;
import com.google.android.gms.internal.qa;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.qh;

@me
public abstract class d
  extends b
  implements o, js
{
  public d(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, if paramif, VersionInfoParcel paramVersionInfoParcel, i parami)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramif, paramVersionInfoParcel, parami);
  }
  
  protected qa a(nh paramnh, j paramj)
  {
    Object localObject = c.f.getNextView();
    if ((localObject instanceof qa))
    {
      com.google.android.gms.ads.internal.util.client.b.a("Reusing webview...");
      localObject = (qa)localObject;
      ((qa)localObject).a(c.c, c.i);
    }
    for (;;)
    {
      ((qa)localObject).i().a(this, this, this, this, false, this, null, paramj, this);
      ((qa)localObject).b(a.A);
      ((qa)localObject).c(a.y);
      return (qa)localObject;
      if (localObject != null) {
        c.f.removeView((View)localObject);
      }
      localObject = ae.f().a(c.c, c.i, false, false, c.d, c.e, f);
      if (c.i.i == null) {
        a(((qa)localObject).getWebView());
      }
    }
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    p();
  }
  
  public void a(dn paramdn)
  {
    bn.b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
    c.x = paramdn;
  }
  
  protected void a(nh paramnh, dh paramdh)
  {
    if (e != -2)
    {
      oe.a.post(new e(this, paramnh));
      return;
    }
    if (d != null) {
      c.i = d;
    }
    if (b.i)
    {
      c.C = 0;
      c.h = ae.d().a(c.c, this, paramnh, c.d, null, g, this, paramdh);
      return;
    }
    oe.a.post(new f(this, paramnh, paramdh));
  }
  
  protected boolean a(ng paramng1, ng paramng2)
  {
    if ((c.e()) && (c.f != null)) {
      c.f.a().a(v);
    }
    return super.a(paramng1, paramng2);
  }
  
  public void b(View paramView)
  {
    c.B = paramView;
    b(new ng(c.k, null, null, null, null, null, null));
  }
  
  public void r()
  {
    a(c.j, false);
  }
  
  public void y()
  {
    a();
  }
  
  public void z()
  {
    o();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */