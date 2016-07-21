package com.flurry.sdk;

import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;

class ex$a
  extends WebViewClient
{
  private ex$a(ex paramex) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    ex.c(a).setVisibility(8);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    ex.c(a).setVisibility(0);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith(em.c()))
    {
      kg.a(5, ex.a(), "Auth token is:" + paramString);
      a.removeView(ex.a(a));
      String str = Uri.parse(paramString).getQueryParameter("oauth_verifier");
      ex.b(a).a(str);
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ex.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */