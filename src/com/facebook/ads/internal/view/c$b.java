package com.facebook.ads.internal.view;

import android.util.Log;
import android.webkit.JavascriptInterface;
import com.facebook.ads.internal.adapters.e;
import com.facebook.ads.internal.util.a;
import com.facebook.ads.internal.util.g;

class c$b
{
  private final String b = b.class.getSimpleName();
  
  private c$b(c paramc) {}
  
  @JavascriptInterface
  public void alert(String paramString)
  {
    Log.e(b, paramString);
  }
  
  @JavascriptInterface
  public String getAnalogInfo()
  {
    return g.a(a.a());
  }
  
  @JavascriptInterface
  public void onPageInitialized()
  {
    if (a.b()) {}
    do
    {
      return;
      c.c(a);
    } while (c.d(a) == null);
    c.d(a).a();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */