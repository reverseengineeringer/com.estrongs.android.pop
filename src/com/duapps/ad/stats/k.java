package com.duapps.ad.stats;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class k
  extends WebViewClient
  implements i
{
  p a;
  WebView b;
  private Runnable d = new l(this);
  private Runnable e = new m(this);
  private volatile boolean f = false;
  private volatile boolean g = false;
  private volatile boolean h = false;
  
  public k(c paramc, p paramp)
  {
    a = paramp;
  }
  
  private void a(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
    a("SslError");
  }
  
  private void a(String paramString)
  {
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] handleError");
    }
    c.a.removeCallbacks(e);
    c.a.removeCallbacks(d);
    if (g)
    {
      if (com.duapps.ad.base.l.a()) {
        com.duapps.ad.base.l.c("ToolClickHandler", "[WebView]Action canceled.");
      }
      u.g(c.a(c), a);
    }
    do
    {
      return;
      if (!h) {
        break;
      }
    } while (!com.duapps.ad.base.l.a());
    com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] already consumed");
    return;
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] onReceivedError: " + paramString);
    }
    h = true;
    c.i(a, a.j());
    c.a();
  }
  
  public void a()
  {
    g = true;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] Page finished");
    }
    c.a.removeCallbacks(e);
    c.a.removeCallbacks(d);
    if (g)
    {
      if (com.duapps.ad.base.l.a()) {
        com.duapps.ad.base.l.c("ToolClickHandler", "[WebView]Action canceled.");
      }
      u.g(c.a(c), a);
    }
    do
    {
      do
      {
        return;
        if (!h) {
          break;
        }
      } while (!com.duapps.ad.base.l.a());
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] already consumed");
      return;
    } while (f);
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] start TIMEOUT_FINISH: " + paramString);
    }
    c.a.postDelayed(d, 2000L);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] onPageStarted.");
    }
    b = paramWebView;
    f = false;
    h = false;
    c.a.removeCallbacks(e);
    c.a.removeCallbacks(d);
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] start TIMEOUT_START: " + paramString);
    }
    c.a.postDelayed(e, 4000L);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    a("Error: " + paramInt);
  }
  
  @TargetApi(11)
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    a(paramWebView, paramSslErrorHandler, paramSslError);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] shouldOverrideUrlLoading.");
    }
    c.a.removeCallbacks(e);
    c.a.removeCallbacks(d);
    if ((g) || (h) || (f))
    {
      if (com.duapps.ad.base.l.a()) {
        com.duapps.ad.base.l.c("ToolClickHandler", "[WebView]Action canceled.");
      }
      h = true;
    }
    do
    {
      return true;
      if (paramString == null)
      {
        if (com.duapps.ad.base.l.a()) {
          com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] null URL.");
        }
        c.i(a, a.j());
        c.a();
        h = true;
        return true;
      }
      if (!n.b(paramString)) {
        break;
      }
      if (com.duapps.ad.base.l.a()) {
        com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] Market URL: " + paramString);
      }
      c.a(a, paramString);
      a.b(true);
      c.h(a, paramString);
      c.a();
      h = true;
    } while (b == null);
    b.stopLoading();
    return true;
    if (com.duapps.ad.base.l.a()) {
      com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] Decode URL: " + paramString);
    }
    if (!f)
    {
      if (com.duapps.ad.base.l.a()) {
        com.duapps.ad.base.l.c("ToolClickHandler", "[WebView] start TIMEOUT_START: " + paramString);
      }
      c.a.postDelayed(e, 4000L);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */