package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.estrongs.android.util.ac;
import com.estrongs.android.util.bd;

class v
  extends WebViewClient
{
  private v(CreateOAuthNetDisk paramCreateOAuthNetDisk) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if ((!CreateOAuthNetDisk.c(a, paramString)) || (fa).a)) {
      CreateOAuthNetDisk.d(a, paramString);
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    int i = 1;
    paramBitmap = paramWebView.getLayoutParams();
    int j = paramWebView.getHeight();
    if (j == 0)
    {
      height = 300;
      paramWebView.setLayoutParams(paramBitmap);
      CreateOAuthNetDisk.b(a).post(new w(this));
      paramBitmap = null;
      if (!CreateOAuthNetDisk.a(a).equals("box")) {
        break label141;
      }
      if (!paramString.startsWith("https://localhost")) {
        break label427;
      }
      paramString = CreateOAuthNetDisk.a(a, paramString, "code");
    }
    for (;;)
    {
      if (i != 0)
      {
        paramWebView.stopLoading();
        if (paramString != null)
        {
          paramWebView = CreateOAuthNetDisk.b(a).obtainMessage(CreateOAuthNetDisk.a);
          obj = paramString;
          CreateOAuthNetDisk.b(a).sendMessage(paramWebView);
        }
      }
      else
      {
        return;
        height = j;
        break;
        label141:
        if ((CreateOAuthNetDisk.a(a).equals("onedrive")) || (CreateOAuthNetDisk.a(a).equals("kuaipan")) || (CreateOAuthNetDisk.a(a).equals("vdisk")) || (CreateOAuthNetDisk.a(a).equals("kanbox")))
        {
          if (!paramString.startsWith("http://www.estrongs.com")) {
            break label427;
          }
          if (CreateOAuthNetDisk.a(a).equals("kuaipan"))
          {
            paramString = CreateOAuthNetDisk.a(a, paramString, "oauth_token");
            continue;
          }
          paramString = CreateOAuthNetDisk.a(a, paramString, "code");
          continue;
        }
        if (CreateOAuthNetDisk.a(a).equals("gdrive"))
        {
          if (!paramString.startsWith("http://localhost")) {
            break label427;
          }
          paramString = CreateOAuthNetDisk.a(a, paramString, "code");
          continue;
        }
        if (CreateOAuthNetDisk.a(a).equals("dropbox"))
        {
          if (!paramString.startsWith("http://localhost")) {
            break label427;
          }
          paramString = CreateOAuthNetDisk.a(a, paramString, "oauth_token");
          continue;
        }
        if ((!CreateOAuthNetDisk.a(a).equals("megacloud")) || (!paramString.startsWith("http://localhost"))) {
          break label427;
        }
        paramBitmap = CreateOAuthNetDisk.a(a, paramString, "oauth_token");
        paramString = paramBitmap + "&" + CreateOAuthNetDisk.a(a, paramString, "oauth_verifier");
        continue;
      }
      paramWebView = CreateOAuthNetDisk.b(a).obtainMessage(CreateOAuthNetDisk.d);
      CreateOAuthNetDisk.b(a).sendMessage(paramWebView);
      return;
      label427:
      i = 0;
      paramString = paramBitmap;
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    paramInt = paramString2.indexOf("://");
    paramWebView = paramString2;
    if (paramInt > 0) {
      paramWebView = paramString2.substring(paramInt + 3);
    }
    if (paramWebView.equalsIgnoreCase(CreateOAuthNetDisk.g(a)))
    {
      paramWebView = CreateOAuthNetDisk.b(a).obtainMessage(CreateOAuthNetDisk.a);
      CreateOAuthNetDisk.b(a).sendMessage(paramWebView);
    }
  }
  
  @SuppressLint({"NewApi"})
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    ac.a(a, paramWebView, paramSslErrorHandler, paramSslError);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if ((bd.f()) && (paramString != null) && (paramString.contains("openapi.qzone.qq.com")))
    {
      paramWebView = CreateOAuthNetDisk.b(a).obtainMessage(CreateOAuthNetDisk.b);
      obj = paramString;
      CreateOAuthNetDisk.b(a).sendMessageDelayed(paramWebView, 500L);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */