package com.flurry.sdk;

import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebView;
import android.widget.ProgressBar;

final class ex$c
  extends WebChromeClient
{
  private ex$c(ex paramex) {}
  
  public void onHideCustomView()
  {
    ex.c(a).setVisibility(8);
  }
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    ex.c(a).setProgress(paramInt);
    super.onProgressChanged(paramWebView, paramInt);
    if (paramInt == 100) {
      ex.c(a).setVisibility(8);
    }
  }
  
  public void onShowCustomView(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    ex.c(a).setVisibility(0);
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    ex.c(a).setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ex.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */