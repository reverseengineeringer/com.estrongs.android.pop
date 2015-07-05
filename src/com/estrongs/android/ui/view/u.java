package com.estrongs.android.ui.view;

import android.graphics.Bitmap;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

class u
  extends WebChromeClient
{
  public boolean a = false;
  
  private u(CreateOAuthNetDisk paramCreateOAuthNetDisk) {}
  
  public void onReceivedIcon(WebView paramWebView, Bitmap paramBitmap)
  {
    a = true;
    paramWebView = paramWebView.getUrl();
    if ((CreateOAuthNetDisk.c(b, paramWebView)) && (CreateOAuthNetDisk.d(b).getVisibility() == 0)) {
      CreateOAuthNetDisk.d(b, paramWebView);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */