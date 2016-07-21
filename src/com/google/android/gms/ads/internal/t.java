package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.Window;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.n;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.ga;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.ii;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.ng;
import com.google.android.gms.internal.nh;
import com.google.android.gms.internal.oe;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.qa;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.qh;

@me
public class t
  extends d
  implements ga
{
  protected transient boolean i = false;
  
  public t(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, if paramif, VersionInfoParcel paramVersionInfoParcel, i parami)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramif, paramVersionInfoParcel, parami);
  }
  
  private void B()
  {
    if (c.e())
    {
      c.b();
      c.j = null;
      c.E = false;
      i = false;
    }
  }
  
  private void a(Bundle paramBundle)
  {
    ae.e().b(c.c, c.e.c, "gmob-apps", paramBundle, false);
  }
  
  protected boolean A()
  {
    if (!(c.c instanceof Activity)) {}
    Window localWindow;
    do
    {
      return false;
      localWindow = ((Activity)c.c).getWindow();
    } while ((localWindow == null) || (localWindow.getDecorView() == null));
    Rect localRect1 = new Rect();
    Rect localRect2 = new Rect();
    localWindow.getDecorView().getGlobalVisibleRect(localRect1, null);
    localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect2);
    if ((bottom != 0) && (bottom != 0) && (top == top)) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  protected qa a(nh paramnh, j paramj)
  {
    qa localqa = ae.f().a(c.c, c.i, false, false, c.d, c.e, f);
    localqa.i().a(this, null, this, this, ((Boolean)cz.S.c()).booleanValue(), this, this, paramj, null);
    localqa.b(a.A);
    return localqa;
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel, dh paramdh)
  {
    if (c.j != null)
    {
      b.e("An interstitial is already loading. Aborting.");
      return false;
    }
    return super.a(paramAdRequestParcel, paramdh);
  }
  
  protected boolean a(AdRequestParcel paramAdRequestParcel, ng paramng, boolean paramBoolean)
  {
    if ((c.e()) && (b != null)) {
      ae.g().a(b.getWebView());
    }
    return b.d();
  }
  
  public boolean a(ng paramng1, ng paramng2)
  {
    if (!super.a(paramng1, paramng2)) {
      return false;
    }
    if ((!c.e()) && (c.B != null) && (j != null)) {
      e.a(c.i, paramng2, c.B);
    }
    return true;
  }
  
  public void b(boolean paramBoolean)
  {
    c.E = paramBoolean;
  }
  
  public void g()
  {
    bn.b("showInterstitial must be called on the main UI thread.");
    if (c.j == null)
    {
      b.e("The interstitial has not loaded.");
      return;
    }
    if (((Boolean)cz.ae.c()).booleanValue()) {
      if (c.c.getApplicationContext() == null) {
        break label212;
      }
    }
    label212:
    for (String str = c.c.getApplicationContext().getPackageName();; localObject = c.c.getPackageName())
    {
      Bundle localBundle;
      if (!i)
      {
        b.e("It is not recommended to show an interstitial before onAdLoaded completes.");
        localBundle = new Bundle();
        localBundle.putString("appid", str);
        localBundle.putString("action", "show_interstitial_before_load_finish");
        a(localBundle);
      }
      if (!ae.e().g(c.c))
      {
        b.e("It is not recommended to show an interstitial when app is not in foreground.");
        localBundle = new Bundle();
        localBundle.putString("appid", str);
        localBundle.putString("action", "show_interstitial_app_not_in_foreground");
        a(localBundle);
      }
      if (c.f()) {
        break;
      }
      if (!c.j.k) {
        break label226;
      }
      try
      {
        c.j.m.b();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        b.d("Could not show interstitial.", localRemoteException);
        B();
        return;
      }
    }
    label226:
    if (c.j.b == null)
    {
      b.e("The interstitial failed to load.");
      return;
    }
    if (c.j.b.m())
    {
      b.e("The interstitial is already showing.");
      return;
    }
    c.j.b.a(true);
    if (c.j.j != null) {
      e.a(c.i, c.j);
    }
    Object localObject = new InterstitialAdParameterParcel(c.E, A());
    int k = c.j.b.getRequestedOrientation();
    int j = k;
    if (k == -1) {
      j = c.j.g;
    }
    localObject = new AdOverlayInfoParcel(this, this, this, c.j.b, j, c.e, c.j.v, (InterstitialAdParameterParcel)localObject);
    ae.c().a(c.c, (AdOverlayInfoParcel)localObject);
  }
  
  protected boolean q()
  {
    if (super.q())
    {
      i = true;
      return true;
    }
    return false;
  }
  
  public void q_()
  {
    B();
    super.q_();
  }
  
  public void r_()
  {
    r();
    super.r_();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */