package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.cr;
import com.google.android.gms.internal.cz;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.dg;
import com.google.android.gms.internal.dh;
import com.google.android.gms.internal.ju;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.nk;
import com.google.android.gms.internal.oh;
import com.google.android.gms.internal.qa;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.qh;
import java.util.Collections;

@me
public class zzd
  extends ju
  implements x
{
  static final int a = Color.argb(0, 0, 0, 0);
  AdOverlayInfoParcel b;
  t c;
  qa d;
  m e;
  v f;
  boolean g = false;
  FrameLayout h;
  WebChromeClient.CustomViewCallback i;
  boolean j = false;
  boolean k = false;
  RelativeLayout l;
  boolean m = false;
  int n = 0;
  private final Activity o;
  private final dh p;
  private final dg q;
  private boolean r;
  private boolean s = false;
  private boolean t = true;
  
  public zzd(Activity paramActivity)
  {
    o = paramActivity;
    p = new dh(((Boolean)cz.G.c()).booleanValue(), "show_interstitial", "interstitial");
    q = p.a();
  }
  
  public void a()
  {
    n = 2;
    o.finish();
  }
  
  public void a(int paramInt)
  {
    o.setRequestedOrientation(paramInt);
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (c != null) {
      c.a(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    p.a(q, new String[] { "vpr" });
    dg localdg = p.a();
    if (c == null)
    {
      c = new t(o, d, paramInt5, p, localdg);
      l.addView(c, 0, new ViewGroup.LayoutParams(-1, -1));
      c.a(paramInt1, paramInt2, paramInt3, paramInt4);
      d.i().a(false);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    boolean bool = false;
    if (paramBundle != null) {
      bool = paramBundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
    }
    j = bool;
    try
    {
      b = AdOverlayInfoParcel.a(o.getIntent());
      if (b != null) {
        break label71;
      }
      throw new zzd.zza("Could not get info for ad overlay.");
    }
    catch (zzd.zza paramBundle)
    {
      b.e(paramBundle.getMessage());
      n = 3;
      o.finish();
    }
    return;
    label71:
    if (b.o.e > 7500000) {
      n = 3;
    }
    if (o.getIntent() != null) {
      t = o.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
    }
    if (b.r != null)
    {
      k = b.r.c;
      label142:
      if (paramBundle == null)
      {
        if ((b.e != null) && (t)) {
          b.e.r_();
        }
        if ((b.m != 1) && (b.d != null)) {
          b.d.a();
        }
      }
      l = new l(o, b.q);
      switch (b.m)
      {
      }
    }
    for (;;)
    {
      throw new zzd.zza("Could not determine ad overlay type.");
      k = false;
      break label142;
      b(false);
      return;
      e = new m(b.f);
      b(false);
      return;
      b(true);
      return;
      if (j)
      {
        n = 3;
        o.finish();
        return;
      }
      if (ae.b().a(o, b.c, b.k)) {
        break;
      }
      n = 3;
      o.finish();
      return;
    }
  }
  
  public void a(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    h = new FrameLayout(o);
    h.setBackgroundColor(-16777216);
    h.addView(paramView, -1, -1);
    o.setContentView(h);
    m();
    i = paramCustomViewCallback;
    g = true;
  }
  
  public void a(boolean paramBoolean)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i1 = 50;
      f = new v(o, i1, this);
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(10);
      if (!paramBoolean) {
        break label88;
      }
    }
    label88:
    for (int i1 = 11;; i1 = 9)
    {
      localLayoutParams.addRule(i1);
      f.a(paramBoolean, b.i);
      l.addView(f, localLayoutParams);
      return;
      i1 = 32;
      break;
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (f != null) {
      f.a(paramBoolean1, paramBoolean2);
    }
  }
  
  public t b()
  {
    return c;
  }
  
  protected void b(int paramInt)
  {
    d.a(paramInt);
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", j);
  }
  
  protected void b(boolean paramBoolean)
  {
    if (!r) {
      o.requestWindowFeature(1);
    }
    Object localObject = o.getWindow();
    if (localObject == null) {
      throw new zzd.zza("Invalid activity, no window available.");
    }
    if ((!k) || ((b.r != null) && (b.r.d))) {
      ((Window)localObject).setFlags(1024, 1024);
    }
    boolean bool2 = b.f.i().b();
    m = false;
    boolean bool1;
    if (bool2)
    {
      if (b.l != ae.g().a()) {
        break label527;
      }
      if (o.getResources().getConfiguration().orientation == 1)
      {
        bool1 = true;
        m = bool1;
      }
    }
    else
    {
      label147:
      b.a("Delay onShow to next orientation change: " + m);
      a(b.l);
      if (ae.g().a((Window)localObject)) {
        b.a("Hardware acceleration on the AdActivity window enabled.");
      }
      if (k) {
        break label575;
      }
      l.setBackgroundColor(-16777216);
      label218:
      o.setContentView(l);
      m();
      if (!paramBoolean) {
        break label642;
      }
      d = ae.f().a(o, b.f.h(), true, bool2, null, b.o);
      d.i().a(null, null, b.g, b.k, true, b.p, null, b.f.i().a(), null);
      d.i().a(new k(this));
      if (b.n == null) {
        break label588;
      }
      d.loadUrl(b.n);
      label372:
      if (b.f != null) {
        b.f.b(this);
      }
    }
    for (;;)
    {
      d.a(this);
      localObject = d.getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup))) {
        ((ViewGroup)localObject).removeView(d.getWebView());
      }
      if (k) {
        d.setBackgroundColor(a);
      }
      l.addView(d.getWebView(), -1, -1);
      if ((!paramBoolean) && (!m)) {
        q();
      }
      a(bool2);
      if (d.j()) {
        a(bool2, true);
      }
      return;
      bool1 = false;
      break;
      label527:
      if (b.l != ae.g().b()) {
        break label147;
      }
      if (o.getResources().getConfiguration().orientation == 2) {}
      for (bool1 = true;; bool1 = false)
      {
        m = bool1;
        break;
      }
      label575:
      l.setBackgroundColor(a);
      break label218;
      label588:
      if (b.j != null)
      {
        d.loadDataWithBaseURL(b.h, b.j, "text/html", "UTF-8", null);
        break label372;
      }
      throw new zzd.zza("No URL or HTML to display in ad overlay.");
      label642:
      d = b.f;
      d.setContext(o);
    }
  }
  
  public void c()
  {
    if ((b != null) && (g)) {
      a(b.l);
    }
    if (h != null)
    {
      o.setContentView(l);
      m();
      h.removeAllViews();
      h = null;
    }
    if (i != null)
    {
      i.onCustomViewHidden();
      i = null;
    }
    g = false;
  }
  
  public void d()
  {
    n = 1;
    o.finish();
  }
  
  public void e()
  {
    n = 0;
  }
  
  public boolean f()
  {
    n = 0;
    boolean bool1;
    if (d == null) {
      bool1 = true;
    }
    boolean bool2;
    do
    {
      return bool1;
      bool2 = d.p();
      bool1 = bool2;
    } while (bool2);
    d.a("onbackblocked", Collections.emptyMap());
    return bool2;
  }
  
  public void g() {}
  
  public void h() {}
  
  public void i()
  {
    if ((b != null) && (b.m == 4))
    {
      if (!j) {
        break label73;
      }
      n = 3;
      o.finish();
    }
    while ((d != null) && (!d.n()))
    {
      ae.g().b(d.getWebView());
      return;
      label73:
      j = true;
    }
    b.e("The webview does not exit. Ignoring action.");
  }
  
  public void j()
  {
    if (c != null) {
      c.h();
    }
    c();
    if ((d != null) && ((!o.isFinishing()) || (e == null))) {
      ae.g().a(d.getWebView());
    }
    o();
  }
  
  public void k()
  {
    o();
  }
  
  public void l()
  {
    if (c != null) {
      c.m();
    }
    if (d != null) {
      l.removeView(d.getWebView());
    }
    o();
  }
  
  public void m()
  {
    r = true;
  }
  
  public void n()
  {
    l.removeView(f);
    a(true);
  }
  
  protected void o()
  {
    if ((!o.isFinishing()) || (s)) {}
    do
    {
      return;
      s = true;
      if (ae.h().e() != null) {
        ae.h().e().a(p);
      }
      if (d != null)
      {
        b(n);
        l.removeView(d.getWebView());
        if (e != null)
        {
          d.setContext(e.d);
          d.a(false);
          e.c.addView(d.getWebView(), e.a, e.b);
          e = null;
        }
        d = null;
      }
    } while ((b == null) || (b.e == null));
    b.e.q_();
  }
  
  public void p()
  {
    if (m)
    {
      m = false;
      q();
    }
  }
  
  protected void q()
  {
    d.b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.zzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */