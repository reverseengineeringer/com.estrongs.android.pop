package com.flurry.sdk;

import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebView;
import android.widget.ProgressBar;

final class gy$a
  extends WebChromeClient
{
  private gy$a(gy paramgy) {}
  
  public boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    if (paramConsoleMessage != null) {
      kg.a(3, gy.a(a), paramConsoleMessage.message() + " -- From line " + paramConsoleMessage.lineNumber() + " of " + paramConsoleMessage.sourceId());
    }
    return false;
  }
  
  public void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
  {
    super.onGeolocationPermissionsShowPrompt(paramString, paramCallback);
    if (gy.i(a))
    {
      paramCallback.invoke(paramString, true, false);
      return;
    }
    paramCallback.invoke(paramString, false, false);
  }
  
  public void onHideCustomView()
  {
    kg.a(3, gy.a(a), "onHideCustomView()");
    gy.c(a, false);
    gy.e(a).setVisibility(8);
    gy.f(a);
  }
  
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    kg.a(3, gy.a(a), "Javascript alert " + paramString1 + " message: " + paramString2 + " View URL: " + paramWebView.getUrl());
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    gy.e(a).setProgress(paramInt);
    super.onProgressChanged(paramWebView, paramInt);
    if (paramInt == 100) {
      gy.e(a).setVisibility(8);
    }
  }
  
  public void onShowCustomView(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    kg.a(3, gy.a(a), "onShowCustomView(14)");
    gy.c(a, true);
    gy.e(a).setVisibility(0);
    gy.f(a);
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    kg.a(3, gy.a(a), "onShowCustomView(7)");
    gy.c(a, true);
    gy.e(a).setVisibility(0);
    gy.f(a);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gy.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */