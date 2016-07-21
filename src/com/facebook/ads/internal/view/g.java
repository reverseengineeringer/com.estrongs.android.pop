package com.facebook.ads.internal.view;

import android.content.Intent;
import android.os.Bundle;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.internal.adapters.l;
import com.facebook.ads.internal.adapters.m;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.b.a;
import com.facebook.ads.internal.util.c;
import com.facebook.ads.internal.util.h;

public class g
  implements i
{
  private static final String a = g.class.getSimpleName();
  private i.a b;
  private a c;
  private l d;
  private m e;
  private long f;
  private long g;
  private b.a h;
  
  public g(InterstitialAdActivity paramInterstitialAdActivity, i.a parama)
  {
    b = parama;
    f = System.currentTimeMillis();
    c = new a(paramInterstitialAdActivity, new g.1(this, paramInterstitialAdActivity), 1);
    c.setId(100001);
    c.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    e = new m(paramInterstitialAdActivity, c, new g.2(this));
    e.d();
    parama.a(c);
  }
  
  public void a()
  {
    if (c != null) {
      c.onPause();
    }
  }
  
  public void a(Intent paramIntent, Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("dataModel")))
    {
      d = l.a(paramBundle.getBundle("dataModel"));
      if (d != null)
      {
        c.loadDataWithBaseURL(h.a(), d.d(), "text/html", "utf-8", null);
        c.a(d.j(), d.k());
      }
    }
    do
    {
      return;
      d = l.b(paramIntent);
    } while (d == null);
    e.a(d);
    c.loadDataWithBaseURL(h.a(), d.d(), "text/html", "utf-8", null);
    c.a(d.j(), d.k());
  }
  
  public void a(Bundle paramBundle)
  {
    if (d != null) {
      paramBundle.putBundle("dataModel", d.l());
    }
  }
  
  public void b()
  {
    if ((g > 0L) && (h != null) && (d != null)) {
      c.a(b.a(g, h, d.i()));
    }
    if (c != null) {
      c.onResume();
    }
  }
  
  public void c()
  {
    if (d != null) {
      c.a(b.a(f, b.a.c, d.i()));
    }
    if (c != null)
    {
      h.a(c);
      c.destroy();
      c = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */