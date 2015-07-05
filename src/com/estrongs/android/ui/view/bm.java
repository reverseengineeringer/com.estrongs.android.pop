package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.estrongs.android.util.ac;

class bm
  extends WebViewClient
{
  private bm(PcsThirdPartOAuth paramPcsThirdPartOAuth) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    Message localMessage = PcsThirdPartOAuth.d(a).obtainMessage(7);
    PcsThirdPartOAuth.d(a).sendMessageDelayed(localMessage, 200L);
    if (paramString.startsWith("http://passport.baidu.com/phoenix/account/afterauth"))
    {
      paramWebView.stopLoading();
      paramWebView.loadUrl("javascript:window.handler.show(document.body.innerHTML);");
    }
    int i = paramString.indexOf("://");
    paramWebView = paramString;
    if (i > 0) {
      paramWebView = paramString.substring(i + 3);
    }
    if ((!paramWebView.startsWith("www.estrongs.com")) && (!paramWebView.startsWith("localhost")) && (PcsThirdPartOAuth.b() != null)) {
      PcsThirdPartOAuth.b().a();
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    paramBitmap = paramWebView.getLayoutParams();
    int i = paramWebView.getHeight();
    if (i == 0)
    {
      height = 300;
      paramWebView.setLayoutParams(paramBitmap);
      if (paramString.startsWith("http://www.estrongs.com"))
      {
        paramString = PcsThirdPartOAuth.a(a, paramString, "code");
        if (paramString == null) {
          break label95;
        }
        paramBitmap = PcsThirdPartOAuth.d(a).obtainMessage(1);
        obj = paramString;
        PcsThirdPartOAuth.d(a).sendMessage(paramBitmap);
      }
    }
    for (;;)
    {
      paramWebView.stopLoading();
      return;
      height = i;
      break;
      label95:
      paramString = PcsThirdPartOAuth.d(a).obtainMessage(4);
      PcsThirdPartOAuth.d(a).sendMessage(paramString);
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    paramInt = paramString2.indexOf("://");
    paramWebView = paramString2;
    if (paramInt > 0) {
      paramWebView = paramString2.substring(paramInt + 3);
    }
    if (paramWebView.equalsIgnoreCase(PcsThirdPartOAuth.n(a)))
    {
      paramWebView = PcsThirdPartOAuth.d(a).obtainMessage(4);
      PcsThirdPartOAuth.d(a).sendMessage(paramWebView);
    }
  }
  
  @SuppressLint({"NewApi"})
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    ac.a(a, paramWebView, paramSslErrorHandler, paramSslError);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */