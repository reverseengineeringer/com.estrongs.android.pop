package com.estrongs.android.pop.app.messagebox;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.MailTo;
import android.os.SystemClock;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;
import java.util.Map;

class as
  extends WebViewClient
{
  private as(WebActivity paramWebActivity) {}
  
  private Intent a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.putExtra("android.intent.extra.EMAIL", new String[] { paramString1 });
    localIntent.putExtra("android.intent.extra.TEXT", paramString3);
    localIntent.putExtra("android.intent.extra.SUBJECT", paramString2);
    localIntent.putExtra("android.intent.extra.CC", paramString4);
    localIntent.setType("message/rfc822");
    return localIntent;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    WebActivity.b(a, true);
    WebActivity.a(a, false);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    WebActivity.a(a, SystemClock.currentThreadTimeMillis());
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    WebActivity.a(a, true);
    if (WebActivity.b(a) != null) {}
    try
    {
      WebActivity.b(a).stopLoading();
      return;
    }
    catch (Exception paramWebView) {}
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Object localObject;
    if (paramString.startsWith("mailto:"))
    {
      localObject = a;
      paramString = MailTo.parse(paramString);
      paramString = a(paramString.getTo(), paramString.getSubject(), paramString.getBody(), paramString.getCc());
    }
    try
    {
      ((Activity)localObject).startActivity(paramString);
      paramWebView.reload();
      return true;
      localObject = new HashMap();
      ((Map)localObject).put("Referer", WebActivity.c(a));
      paramWebView.loadUrl(paramString, (Map)localObject);
      return true;
    }
    catch (Exception paramString)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */