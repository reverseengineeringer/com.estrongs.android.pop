package com.baidu.sapi2;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.baidu.sapi2.shell.SapiAccountService;
import com.baidu.sapi2.utils.L;

class SapiWebView$2
  extends WebViewClient
{
  SapiWebView$2(SapiWebView paramSapiWebView) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (Build.VERSION.SDK_INT > 7) {
      a.getSettings().setBlockNetworkLoads(false);
    }
    a.loadUrl("javascript:(function(){if(window.Pass&&Pass.client&&Pass.client.net){Pass.client.net()}}())");
    if ((paramString.contains(SapiAccountManager.getInstance().getAccountService().m())) || (paramString.contains(SapiAccountManager.getInstance().getAccountService().n())) || (paramString.contains(SapiAccountManager.getInstance().getAccountService().l()))) {
      a.loadUrl("javascript:window.sapi_obj.authorized_response(document.getElementsByTagName('html')[0].innerHTML, 1);");
    }
    if (paramString.contains(SapiAccountManager.getInstance().getAccountService().i())) {
      a.loadUrl("javascript:window.sapi_obj.authorized_response(document.body.innerHTML, 0);");
    }
    SapiWebView.b(a).removeCallbacks(SapiWebView.c(a));
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    SapiWebView.c(a).setUrl(paramString);
    SapiWebView.b(a).postDelayed(SapiWebView.c(a), SapiWebView.d(a));
    if (paramString != null)
    {
      if (paramString.contains("__wp-action=auth-widget"))
      {
        paramWebView = Uri.parse(paramString);
        if (paramWebView != null)
        {
          paramWebView = paramWebView.getQueryParameter("authsid");
          if ((!TextUtils.isEmpty(paramWebView)) && (SapiWebView.e(a) != null)) {
            a.post(new SapiWebView.2.1(this, paramWebView));
          }
        }
      }
      if ((paramString.contains("forget-pwd")) || (paramString.contains("modify-pwd")))
      {
        paramWebView = Uri.parse(paramString);
        if (paramWebView != null)
        {
          paramWebView = paramWebView.getQueryParameter("__wp-action");
          if ((("forget-pwd".equals(paramWebView)) || ("modify-pwd".equals(paramWebView))) && (SapiWebView.f(a) != null)) {
            a.post(new SapiWebView.2.2(this));
          }
        }
      }
    }
  }
  
  @TargetApi(8)
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (Build.VERSION.SDK_INT > 10)
    {
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      return;
    }
    paramSslErrorHandler.proceed();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString != null)
    {
      if ((paramString.startsWith("sms")) || (paramString.startsWith("tel")) || (paramString.startsWith("bdscenter"))) {}
      while (paramString.startsWith("wtloginmqq")) {
        try
        {
          paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
          paramWebView.setFlags(268435456);
          a.getContext().startActivity(paramWebView);
          return true;
        }
        catch (Throwable paramWebView)
        {
          L.e(paramWebView, paramWebView.getMessage(), new Object[0]);
          return true;
        }
      }
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */