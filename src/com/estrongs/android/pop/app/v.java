package com.estrongs.android.pop.app;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class v
  extends WebViewClient
{
  private boolean b = false;
  
  v(BaseWebViewActivity paramBaseWebViewActivity) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (!b)
    {
      a.setTitle(paramWebView.getTitle());
      BaseWebViewActivity.b(a);
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    b = false;
    BaseWebViewActivity.a(a);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    b = true;
    BaseWebViewActivity.c(a);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */