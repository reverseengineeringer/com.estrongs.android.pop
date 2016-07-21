package com.facebook.ads.internal.view;

import android.util.Log;
import android.webkit.JavascriptInterface;
import com.facebook.ads.internal.adapters.e;
import com.facebook.ads.internal.util.g;

public class a$c
{
  private final String b = c.class.getSimpleName();
  
  public a$c(a parama) {}
  
  @JavascriptInterface
  public void alert(String paramString)
  {
    Log.e(b, paramString);
  }
  
  @JavascriptInterface
  public String getAnalogInfo()
  {
    return g.a(com.facebook.ads.internal.util.a.a());
  }
  
  @JavascriptInterface
  public void onPageInitialized()
  {
    if (a.b()) {}
    do
    {
      return;
      a.a(a).a();
    } while (a.b(a) == null);
    a.b(a).a();
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */