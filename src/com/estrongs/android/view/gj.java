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
import com.estrongs.android.util.bk;
import com.estrongs.android.util.bm;

class gj
  extends fy
{
  gj(WebViewWrapper paramWebViewWrapper, View paramView1, ViewGroup paramViewGroup, View paramView2, VideoEnabledWebView paramVideoEnabledWebView)
  {
    super(paramView1, paramViewGroup, paramView2, paramVideoEnabledWebView);
  }
  
  @SuppressLint({"NewApi"})
  protected void a(String paramString, ValueCallback<Uri> paramValueCallback, ValueCallback<Uri[]> paramValueCallback1)
  {
    if (WebViewWrapper.c(d) != null) {
      WebViewWrapper.c(d).onReceiveValue(null);
    }
    WebViewWrapper.a(d, paramValueCallback);
    if (WebViewWrapper.d(d) != null) {
      WebViewWrapper.d(d).onReceiveValue(null);
    }
    WebViewWrapper.b(d, paramValueCallback1);
    paramValueCallback = paramString;
    if (bk.a(paramString)) {
      paramValueCallback = "*/*";
    }
    paramString = new Intent("android.intent.action.GET_CONTENT");
    paramString.addCategory("android.intent.category.OPENABLE");
    paramString.setType(paramValueCallback);
    if (d.ag != null) {
      d.ag.startActivityForResult(Intent.createChooser(paramString, d.ag.getText(2131232003)), 4134);
    }
  }
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    WebViewWrapper.e(d).setProgress(paramInt);
    if (paramInt == 100) {
      WebViewWrapper.e(d).setVisibility(4);
    }
    super.onProgressChanged(paramWebView, paramInt);
  }
  
  public void onReceivedIcon(WebView paramWebView, Bitmap paramBitmap)
  {
    WebViewWrapper.b(d);
    bm.c().a(paramWebView.getUrl(), paramBitmap);
  }
  
  public void onReceivedTitle(WebView paramWebView, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      paramWebView = d.ag.getString(2131231608);
    }
    for (;;)
    {
      WebViewWrapper.a(d, paramWebView, true);
      WebViewWrapper.e(d, paramWebView);
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
 * Qualified Name:     com.estrongs.android.view.gj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */