package com.estrongs.android.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient.FileChooserParams;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.estrongs.android.util.bd;
import com.estrongs.android.util.be;

class ee
  extends dt
{
  ee(WebViewWrapper paramWebViewWrapper, View paramView1, ViewGroup paramViewGroup, View paramView2, VideoEnabledWebView paramVideoEnabledWebView)
  {
    super(paramView1, paramViewGroup, paramView2, paramVideoEnabledWebView);
  }
  
  @SuppressLint({"NewApi"})
  protected void a(String paramString, ValueCallback<Uri> paramValueCallback, ValueCallback<Uri[]> paramValueCallback1)
  {
    if (WebViewWrapper.c(c) != null) {
      WebViewWrapper.c(c).onReceiveValue(null);
    }
    WebViewWrapper.a(c, paramValueCallback);
    if (WebViewWrapper.d(c) != null) {
      WebViewWrapper.d(c).onReceiveValue(null);
    }
    WebViewWrapper.b(c, paramValueCallback1);
    paramValueCallback = paramString;
    if (bd.a(paramString)) {
      paramValueCallback = "*/*";
    }
    paramString = new Intent("android.intent.action.GET_CONTENT");
    paramString.addCategory("android.intent.category.OPENABLE");
    paramString.setType(paramValueCallback);
    if (c.ad != null) {
      c.ad.startActivityForResult(Intent.createChooser(paramString, c.ad.getText(2131427955)), 16781344);
    }
  }
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    WebViewWrapper.e(c).setProgress(paramInt);
    if (paramInt == 100) {
      WebViewWrapper.e(c).setVisibility(4);
    }
    super.onProgressChanged(paramWebView, paramInt);
  }
  
  public void onReceivedIcon(WebView paramWebView, Bitmap paramBitmap)
  {
    WebViewWrapper.b(c);
    be.c().a(paramWebView.getUrl(), paramBitmap);
  }
  
  public void onReceivedTitle(WebView paramWebView, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      paramWebView = c.ad.getString(2131428368);
    }
    for (;;)
    {
      WebViewWrapper.a(c, paramWebView, true);
      WebViewWrapper.e(c, paramWebView);
      return;
      paramWebView = paramString;
      if (paramString.contains("百度手机助手")) {
        paramWebView = "应用";
      }
    }
  }
  
  public boolean onShowFileChooser(WebView paramWebView, ValueCallback<Uri[]> paramValueCallback, WebChromeClient.FileChooserParams paramFileChooserParams)
  {
    a(null, null, paramValueCallback);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */