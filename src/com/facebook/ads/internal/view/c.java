package com.facebook.ads.internal.view;

import android.content.Context;
import android.webkit.WebSettings;
import com.facebook.ads.internal.adapters.l;
import com.facebook.ads.internal.adapters.m;
import com.facebook.ads.internal.ssp.ANAdRenderer.Listener;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.b.a;
import com.facebook.ads.internal.util.h;

public class c
  extends e
{
  private static final String a = c.class.getSimpleName();
  private final l b;
  private final int c;
  private final ANAdRenderer.Listener d;
  private m e;
  private com.facebook.ads.internal.adapters.e f;
  private long g;
  private b.a h;
  
  public c(Context paramContext, l paraml, int paramInt, ANAdRenderer.Listener paramListener)
  {
    super(paramContext);
    if ((paraml == null) || (paramListener == null)) {
      throw new IllegalArgumentException();
    }
    b = paraml;
    c = paramInt;
    d = paramListener;
    c();
  }
  
  private void c()
  {
    setWebViewClient(new c.a(this, null));
    getSettings().setJavaScriptEnabled(true);
    getSettings().setSupportZoom(false);
    h.b(this);
    setHorizontalScrollBarEnabled(false);
    setHorizontalScrollbarOverlay(false);
    setVerticalScrollBarEnabled(false);
    setVerticalScrollbarOverlay(false);
    addJavascriptInterface(new c.b(this, null), "AdControl");
    e = new m(getContext(), this, new c.1(this));
    e.a(b);
    f = new com.facebook.ads.internal.adapters.e(getContext(), this, c, new c.2(this));
    f.a(b.j());
    f.b(b.k());
    f.a();
    loadDataWithBaseURL(h.a(), b.d(), "text/html", "utf-8", null);
  }
  
  private void d()
  {
    e.c();
  }
  
  public void destroy()
  {
    if (f != null)
    {
      f.b();
      f = null;
    }
    h.a(this);
    super.destroy();
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (paramInt == 0)
    {
      if ((g > 0L) && (h != null))
      {
        com.facebook.ads.internal.util.c.a(b.a(g, h, b.i()));
        g = 0L;
        h = null;
      }
      if (f != null) {
        f.a();
      }
    }
    while ((paramInt != 8) || (f == null)) {
      return;
    }
    f.b();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */