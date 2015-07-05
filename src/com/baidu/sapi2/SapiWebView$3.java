package com.baidu.sapi2;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.baidu.sapi2.utils.L;

class SapiWebView$3
  extends WebChromeClient
{
  SapiWebView$3(SapiWebView paramSapiWebView) {}
  
  public void onConsoleMessage(String paramString1, int paramInt, String paramString2)
  {
    L.d(paramString1 + " -- From line " + paramInt + " of " + paramString2, new Object[0]);
  }
  
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    paramWebView = new AlertDialog.Builder(a.getContext()).setTitle("JavaScript Message").setMessage(paramString2).setPositiveButton("ok", new SapiWebView.3.1(this, paramJsResult));
    paramWebView.setCancelable(false);
    paramWebView.create();
    paramWebView.show();
    return true;
  }
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (SapiWebView.g(a) != null)
    {
      if (paramInt != 100) {
        break label35;
      }
      SapiWebView.g(a).setVisibility(8);
    }
    for (;;)
    {
      super.onProgressChanged(paramWebView, paramInt);
      return;
      label35:
      if (SapiWebView.g(a).getVisibility() == 8) {
        SapiWebView.g(a).setVisibility(0);
      }
      SapiWebView.g(a).setProgress(paramInt);
    }
  }
  
  @TargetApi(5)
  public void onReachedMaxAppCacheSize(long paramLong1, long paramLong2, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    paramQuotaUpdater.updateQuota(2L * paramLong1);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */