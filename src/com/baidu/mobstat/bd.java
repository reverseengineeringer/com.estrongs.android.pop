package com.baidu.mobstat;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;

class bd
  extends WebViewClient
{
  private WeakReference<Context> a;
  private WebViewClient b;
  
  public bd(Context paramContext, WebViewClient paramWebViewClient)
  {
    a = new WeakReference(paramContext);
    b = paramWebViewClient;
  }
  
  private void a(String paramString)
  {
    JSONObject localJSONObject = new JSONObject(paramString);
    paramString = localJSONObject.getString("action");
    localJSONObject = localJSONObject.getJSONObject("obj");
    Context localContext = (Context)a.get();
    if (localContext == null) {}
    do
    {
      return;
      if ("onPageStart".equals(paramString))
      {
        StatService.onPageStart(localContext, localJSONObject.getString("page"));
        return;
      }
      if ("onPageEnd".equals(paramString))
      {
        StatService.onPageEnd(localContext, localJSONObject.getString("page"));
        return;
      }
      if ("onEvent".equals(paramString))
      {
        StatService.onEvent(localContext, localJSONObject.getString("event_id"), localJSONObject.getString("label"), localJSONObject.getInt("acc"));
        return;
      }
      if ("onEventStart".equals(paramString))
      {
        StatService.onEventStart(localContext, localJSONObject.getString("event_id"), localJSONObject.getString("label"));
        return;
      }
      if ("onEventEnd".equals(paramString))
      {
        StatService.onEventEnd(localContext, localJSONObject.getString("event_id"), localJSONObject.getString("label"));
        return;
      }
    } while (!"onEventDuration".equals(paramString));
    StatService.onEventDuration(localContext, localJSONObject.getString("event_id"), localJSONObject.getString("label"), localJSONObject.getLong("duration"));
  }
  
  public void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    if (b != null) {
      b.doUpdateVisitedHistory(paramWebView, paramString, paramBoolean);
    }
  }
  
  public void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    if (b != null) {
      b.onFormResubmission(paramWebView, paramMessage1, paramMessage2);
    }
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    if (b != null) {
      b.onLoadResource(paramWebView, paramString);
    }
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if (b != null) {
      b.onPageFinished(paramWebView, paramString);
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if (b != null) {
      b.onPageStarted(paramWebView, paramString, paramBitmap);
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if (b != null) {
      b.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }
  }
  
  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    if (b != null) {
      b.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
    }
  }
  
  public void onReceivedLoginRequest(WebView paramWebView, String paramString1, String paramString2, String paramString3)
  {
    if (b != null) {
      b.onReceivedLoginRequest(paramWebView, paramString1, paramString2, paramString3);
    }
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (b != null) {
      b.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    }
  }
  
  public void onScaleChanged(WebView paramWebView, float paramFloat1, float paramFloat2)
  {
    if (b != null) {
      b.onScaleChanged(paramWebView, paramFloat1, paramFloat2);
    }
  }
  
  @Deprecated
  public void onTooManyRedirects(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    if (b != null) {
      b.onTooManyRedirects(paramWebView, paramMessage1, paramMessage2);
    }
  }
  
  public void onUnhandledKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    if (b != null) {
      b.onUnhandledKeyEvent(paramWebView, paramKeyEvent);
    }
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    if (b != null) {
      return b.shouldInterceptRequest(paramWebView, paramString);
    }
    return null;
  }
  
  public boolean shouldOverrideKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    if (b != null) {
      return b.shouldOverrideKeyEvent(paramWebView, paramKeyEvent);
    }
    return false;
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Log.d("BaiduStatJSInterface", "shouldOverrideUrlLoading");
    try
    {
      String str1 = URLDecoder.decode(paramString, "UTF-8");
      paramString = str1;
      str1 = paramString;
      String str2;
      label55:
      String str3;
      return false;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException1)
    {
      try
      {
        if (TextUtils.isEmpty(paramString)) {
          break label55;
        }
        str1 = paramString;
        if (!paramString.startsWith("bmtj:")) {
          break label55;
        }
        a(paramString.substring(5));
        return true;
      }
      catch (JSONException localJSONException2)
      {
        for (;;) {}
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException2)
      {
        for (;;) {}
      }
      localUnsupportedEncodingException1 = localUnsupportedEncodingException1;
      cr.b(localUnsupportedEncodingException1);
      str2 = paramString;
      if (b != null) {
        return b.shouldOverrideUrlLoading(paramWebView, str2);
      }
    }
    catch (JSONException localJSONException1)
    {
      for (;;)
      {
        cr.b(localJSONException1);
        str3 = paramString;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */