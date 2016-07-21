package com.facebook.ads.internal;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.BannerAdapter;
import com.facebook.ads.internal.adapters.InterstitialAdapter;
import com.facebook.ads.internal.adapters.f;
import com.facebook.ads.internal.adapters.p;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.server.a.a;
import com.facebook.ads.internal.util.g;
import java.util.HashMap;
import java.util.Map;

public class h
  implements a.a
{
  private static final String b = h.class.getSimpleName();
  protected a a;
  private final Context c;
  private final String d;
  private final com.facebook.ads.internal.server.a e;
  private final Handler f;
  private final Runnable g;
  private final Runnable h;
  private volatile boolean i;
  private boolean j;
  private volatile boolean k;
  private AdAdapter l;
  private View m;
  private com.facebook.ads.internal.dto.c n;
  private com.facebook.ads.internal.dto.e o;
  private e p;
  private c q;
  private AdSize r;
  private int s;
  private final h.a t;
  private boolean u;
  
  public h(Context paramContext, String paramString, e parame, AdSize paramAdSize, c paramc, int paramInt, boolean paramBoolean)
  {
    c = paramContext;
    d = paramString;
    p = parame;
    r = paramAdSize;
    q = paramc;
    s = paramInt;
    t = new h.a(this, null);
    e = new com.facebook.ads.internal.server.a();
    e.a(this);
    f = new Handler();
    g = new h.1(this);
    h = new h.2(this);
    j = paramBoolean;
    i();
  }
  
  private void a(AdAdapter paramAdAdapter)
  {
    if (paramAdAdapter != null) {
      paramAdAdapter.onDestroy();
    }
  }
  
  private void i()
  {
    if (j) {
      return;
    }
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    c.registerReceiver(t, localIntentFilter);
    u = true;
  }
  
  private void j()
  {
    if (u) {}
    try
    {
      c.unregisterReceiver(t);
      u = false;
      return;
    }
    catch (Exception localException)
    {
      com.facebook.ads.internal.util.c.a(com.facebook.ads.internal.util.b.a(localException, "Error unregistering screen state receiever"));
    }
  }
  
  private void k()
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      throw new IllegalStateException("Adapter listener must be called on the main thread.");
    }
  }
  
  private AdPlacementType l()
  {
    if (r == null) {
      return AdPlacementType.NATIVE;
    }
    if (r == AdSize.INTERSTITIAL) {
      return AdPlacementType.INTERSTITIAL;
    }
    return AdPlacementType.BANNER;
  }
  
  private void m()
  {
    o = new com.facebook.ads.internal.dto.e(c, d, r, p, q, s, AdSettings.isTestMode(c));
    e.a(c, o);
  }
  
  private void n()
  {
    Object localObject4 = n;
    Object localObject2 = ((com.facebook.ads.internal.dto.c)localObject4).c();
    if (localObject2 == null)
    {
      a.a(AdErrorType.NO_FILL.getAdErrorWrapper(""));
      o();
      return;
    }
    Object localObject1 = b;
    Object localObject3 = f.a((String)localObject1, ((com.facebook.ads.internal.dto.c)localObject4).a().a());
    if (localObject3 == null)
    {
      Log.e(b, "Adapter does not exist: " + (String)localObject1);
      n();
      return;
    }
    if (l() != ((AdAdapter)localObject3).getPlacementType())
    {
      a.a(AdErrorType.INTERNAL_ERROR.getAdErrorWrapper(""));
      return;
    }
    localObject1 = new HashMap();
    localObject4 = ((com.facebook.ads.internal.dto.c)localObject4).a();
    ((Map)localObject1).put("data", c);
    ((Map)localObject1).put("definition", localObject4);
    if (o == null) {
      a.a(AdErrorType.UNKNOWN_ERROR.getAdErrorWrapper("environment is empty"));
    }
    switch (h.9.a[localObject3.getPlacementType().ordinal()])
    {
    default: 
      Log.e(b, "attempt unexpected adapter type");
      return;
    case 2: 
      localObject2 = (BannerAdapter)localObject3;
      localObject3 = new h.3(this, (BannerAdapter)localObject2);
      f.postDelayed((Runnable)localObject3, 10000L);
      ((BannerAdapter)localObject2).loadBannerAd(c, r, new h.4(this, (Runnable)localObject3), (Map)localObject1);
      return;
    case 1: 
      localObject2 = (InterstitialAdapter)localObject3;
      localObject3 = new h.5(this, (InterstitialAdapter)localObject2);
      f.postDelayed((Runnable)localObject3, 10000L);
      ((InterstitialAdapter)localObject2).loadInterstitialAd(c, new h.6(this, (Runnable)localObject3), (Map)localObject1);
      return;
    }
    localObject2 = (p)localObject3;
    localObject3 = new h.7(this, (p)localObject2);
    f.postDelayed((Runnable)localObject3, 10000L);
    ((p)localObject2).a(c, new h.8(this, (Runnable)localObject3), (Map)localObject1);
  }
  
  private void o()
  {
    if ((j) || (i)) {
      return;
    }
    switch (h.9.a[l().ordinal()])
    {
    default: 
      return;
    case 1: 
      if (!g.a(c)) {
        f.postDelayed(h, 1000L);
      }
      label74:
      if (n != null) {
        break;
      }
    }
    for (long l1 = 30000L; l1 > 0L; l1 = n.a().b())
    {
      f.postDelayed(g, l1);
      i = true;
      return;
      if (n == null) {}
      for (int i1 = 1; (m != null) && (!g.a(c, m, i1)); i1 = n.a().e())
      {
        f.postDelayed(h, 1000L);
        return;
      }
      break label74;
    }
  }
  
  private void p()
  {
    if (!i) {
      return;
    }
    f.removeCallbacks(g);
    i = false;
  }
  
  public com.facebook.ads.internal.dto.d a()
  {
    if (n == null) {
      return null;
    }
    return n.a();
  }
  
  public void a(a parama)
  {
    a = parama;
  }
  
  public void a(b paramb)
  {
    a.a(paramb);
    int i1 = paramb.a().getErrorCode();
    if ((!i) && ((i1 == 1002) || (i1 == 1000)) && (l() == AdPlacementType.BANNER))
    {
      f.postDelayed(g, 30000L);
      i = true;
    }
  }
  
  public void a(com.facebook.ads.internal.server.d paramd)
  {
    paramd = paramd.b();
    if ((paramd == null) || (paramd.a() == null)) {
      throw new IllegalStateException("invalid placement in response");
    }
    n = paramd;
    n();
  }
  
  public void b()
  {
    m();
  }
  
  public void c()
  {
    if (l == null) {
      throw new IllegalStateException("no adapter ready to start");
    }
    if (k) {
      throw new IllegalStateException("ad already started");
    }
    k = true;
    Object localObject = l.getPlacementType();
    switch (h.9.a[localObject.ordinal()])
    {
    default: 
      Log.e(b, "start unexpected adapter type");
    case 1: 
    case 2: 
      do
      {
        return;
        ((InterstitialAdapter)l).show();
        return;
      } while (m == null);
      a.a(m);
      o();
      return;
    }
    localObject = (p)l;
    if (!((p)localObject).u()) {
      throw new IllegalStateException("ad is not ready or already displayed");
    }
    a.a((p)localObject);
  }
  
  public void d()
  {
    j();
    if (!k) {
      return;
    }
    p();
    a(l);
    m = null;
    k = false;
  }
  
  public void e()
  {
    if (!k) {
      return;
    }
    p();
  }
  
  public void f()
  {
    if (!k) {
      return;
    }
    o();
  }
  
  public void g()
  {
    p();
    m();
  }
  
  public void h()
  {
    j = true;
    p();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */