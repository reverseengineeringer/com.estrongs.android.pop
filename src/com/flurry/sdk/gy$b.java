package com.flurry.sdk;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class gy$b
  extends WebViewClient
{
  private gy$b(gy paramgy) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    kg.a(3, gy.a(a), "onPageFinished: duration:" + (System.currentTimeMillis() - gy.g(a)) + " for url = " + paramString);
    if ((paramString == null) || (paramWebView == null) || (paramWebView != gy.b(a))) {
      return;
    }
    gy.e(a).setVisibility(8);
    gy.a(a, false);
    if (!gy.h(a))
    {
      paramWebView = a.getAdController();
      paramString = paramWebView.e();
      if (paramWebView.c(bb.Z.a()))
      {
        kg.a(3, gy.a(a), "onLogEvent(" + paramString + ", " + bb.Z + ", " + true + ", " + Collections.emptyMap() + ")");
        HashMap localHashMap = new HashMap();
        localHashMap.put("adState", "40");
        i.a().a(paramString, bb.Z, true, localHashMap);
        paramWebView.d(bb.Z.a());
      }
    }
    gy.f(a);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    kg.a(3, gy.a(a), "onPageStarted: url = " + paramString);
    if ((paramString == null) || (paramWebView == null) || (paramWebView != gy.b(a))) {
      return;
    }
    gy.c(a);
    a.dismissProgressDialog();
    if ((Build.VERSION.SDK_INT < 11) && (gy.d(a)) && (a.a(paramString, true)))
    {
      kg.a(3, gy.a(a), "onPageStarted: stopLoading is called");
      paramWebView.stopLoading();
    }
    gy.e(a).setVisibility(0);
    gy.a(a, true);
    gy.a(a, System.currentTimeMillis());
    gy.f(a);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    kg.a(3, gy.a(a), "onReceivedError: error = " + paramInt + " description= " + paramString1 + " failingUrl= " + paramString2);
    gy.b(a, true);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    paramWebView.clearSslPreferences();
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    gy.b(a, true);
    kg.a(3, gy.a(a), "onReceivedSslError: error = " + paramSslError.toString());
    paramWebView.clearSslPreferences();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    kg.a(3, gy.a(a), "shouldOverrideUrlLoading: url = " + paramString);
    if ((paramString == null) || (paramWebView == null) || (paramWebView != gy.b(a))) {
      return false;
    }
    gy.c(a);
    boolean bool = a.a(paramString, gy.d(a));
    gy.a(a, false);
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gy.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */