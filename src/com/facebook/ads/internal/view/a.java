package com.facebook.ads.internal.view;

import android.content.Context;
import android.webkit.WebSettings;
import com.facebook.ads.internal.util.h;

public class a
  extends e
{
  private final a.a a;
  private com.facebook.ads.internal.adapters.e b;
  
  public a(Context paramContext, a.a parama, int paramInt)
  {
    super(paramContext);
    a = parama;
    setWebViewClient(new a.b(this, null));
    getSettings().setJavaScriptEnabled(true);
    getSettings().setSupportZoom(false);
    h.b(this);
    setHorizontalScrollBarEnabled(false);
    setHorizontalScrollbarOverlay(false);
    setVerticalScrollBarEnabled(false);
    setVerticalScrollbarOverlay(false);
    addJavascriptInterface(new a.c(this), "AdControl");
    b = new com.facebook.ads.internal.adapters.e(getContext(), this, paramInt, new a.1(this, parama));
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    b.a(paramInt1);
    b.b(paramInt2);
  }
  
  public void destroy()
  {
    if (b != null)
    {
      b.b();
      b = null;
    }
    h.a(this);
    super.destroy();
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (a != null) {
      a.a(paramInt);
    }
    if (paramInt == 0) {
      if (b != null) {
        b.a();
      }
    }
    while ((paramInt != 8) || (b == null)) {
      return;
    }
    b.b();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */