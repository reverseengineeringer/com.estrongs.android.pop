package com.duapps.ad.inmobi;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.duapps.ad.base.l;

class g
  extends WebViewClient
{
  g(e parame) {}
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    l.c("InMobiDataExecutor", "resource load:");
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    int i = 0;
    e.a(a, false);
    if (a.c != null) {
      a.c.c = false;
    }
    e.c(a);
    l.c("InMobiDataExecutor", "page finished:" + a.a.J);
    if (a.b == IMData.AdOperationType.Impression) {}
    for (;;)
    {
      l.c("InMobiDataExecutor", "AdOperationType==" + i);
      l.c("InMobiDataExecutor", " completed");
      return;
      i = 1;
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    l.c("InMobiDataExecutor", "page started:");
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    l.c("InMobiDataExecutor", "received error:" + paramInt + "\tdesc:" + paramString1 + "\n" + paramString2);
    e.a(a, false);
    if (a.c != null) {
      a.c.c = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */