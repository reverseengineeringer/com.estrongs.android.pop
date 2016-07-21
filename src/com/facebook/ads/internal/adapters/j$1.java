package com.facebook.ads.internal.adapters;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

class j$1
  extends WebChromeClient
{
  j$1(j paramj) {}
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if ((paramInt == 100) && (j.a(a) != null)) {
      j.a(a).onInterstitialAdLoaded(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.j.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */