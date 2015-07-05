package com.estrongs.android.view;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class el
  extends WebViewClient
{
  el(WebViewWrapper paramWebViewWrapper) {}
  
  public void onLoadResource(WebView paramWebView, String paramString) {}
  
  public void onPageFinished(WebView paramWebView, String paramString) {}
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if ((WebViewWrapper.g(a) != null) && (a.a != null) && (WebViewWrapper.g(a).equals(paramWebView))) {
      a.a.loadUrl(paramString);
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */