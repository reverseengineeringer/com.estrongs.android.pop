package com.estrongs.android.ui.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.estrongs.android.util.ah;

class ab
  extends WebViewClient
{
  private ab(CreateOAuthServiceProvider paramCreateOAuthServiceProvider) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    int i = paramString.indexOf("://");
    if (i > 0) {}
    for (paramWebView = paramString.substring(i + 3);; paramWebView = paramString)
    {
      if ((!paramWebView.startsWith(" www.estrongs.com")) && (!paramWebView.startsWith("localhost")) && (!paramString.startsWith("fbconnect")) && (CreateOAuthServiceProvider.b() != null)) {
        CreateOAuthServiceProvider.b().a();
      }
      return;
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    paramBitmap = null;
    int i = 1;
    if (CreateOAuthServiceProvider.a(a).equals("box"))
    {
      if (!paramString.startsWith("http://127.0.0.1:50767")) {
        break label267;
      }
      paramString = CreateOAuthServiceProvider.a(a, paramString, "auth_token");
    }
    for (;;)
    {
      Object localObject;
      if (i != 0)
      {
        paramWebView.stopLoading();
        if (paramString != null)
        {
          paramWebView = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.a);
          localObject = new Bundle();
          ((Bundle)localObject).putString("token", paramString);
          ((Bundle)localObject).putString("verifier", paramBitmap);
          paramWebView.setData((Bundle)localObject);
          CreateOAuthServiceProvider.c(a).sendMessage(paramWebView);
        }
      }
      else
      {
        return;
        if (CreateOAuthServiceProvider.a(a).equals("Flickr"))
        {
          if (!paramString.startsWith("http://www.estrongs.com")) {
            break label267;
          }
          localObject = CreateOAuthServiceProvider.a(a, paramString, "oauth_token");
          paramBitmap = CreateOAuthServiceProvider.a(a, paramString, "oauth_verifier");
          paramString = (String)localObject;
          continue;
        }
        if (CreateOAuthServiceProvider.a(a).equals("Instagram"))
        {
          if (!paramString.startsWith("http://www.estrongs.com")) {
            break label267;
          }
          paramString = CreateOAuthServiceProvider.a(a, paramString, "code");
          continue;
        }
        if ((!CreateOAuthServiceProvider.a(a).equals("Facebook")) || (!paramString.startsWith("fbconnect://success"))) {
          break label267;
        }
        paramString = CreateOAuthServiceProvider.a(a, paramString, "access_token");
        continue;
      }
      paramWebView = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.e);
      CreateOAuthServiceProvider.c(a).sendMessage(paramWebView);
      return;
      label267:
      i = 0;
      paramString = null;
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if (!paramString2.startsWith("fbconnect://success"))
    {
      paramWebView = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.e);
      if (!CreateOAuthServiceProvider.d(a)) {
        break label52;
      }
    }
    label52:
    for (obj = paramString1;; obj = a.getString(2131231827))
    {
      CreateOAuthServiceProvider.c(a).sendMessage(paramWebView);
      return;
    }
  }
  
  @SuppressLint({"NewApi"})
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    ah.a(a, paramWebView, paramSslErrorHandler, paramSslError);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith("fbconnect://success"))
    {
      paramString = CreateOAuthServiceProvider.a(a, paramString, "access_token");
      paramWebView.stopLoading();
      if (paramString != null)
      {
        paramWebView = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.a);
        Bundle localBundle = new Bundle();
        localBundle.putString("token", paramString);
        paramWebView.setData(localBundle);
        CreateOAuthServiceProvider.c(a).sendMessage(paramWebView);
      }
      for (;;)
      {
        return true;
        paramWebView = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.e);
        CreateOAuthServiceProvider.c(a).sendMessage(paramWebView);
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */