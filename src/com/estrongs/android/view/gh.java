package com.estrongs.android.view;

import android.graphics.Bitmap;
import android.os.Handler;
import android.util.SparseArray;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.bm;

class gh
  extends WebViewClient
{
  gh(WebViewWrapper paramWebViewWrapper) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    WebViewWrapper.d(a, paramString);
    WebViewWrapper.a(a, false);
    WebViewWrapper.b(a, true);
    if (a.O != null) {
      a.O.a(a, true);
    }
    String str = WebViewWrapper.a(a, null, false);
    WebViewWrapper.e(a, str);
    FileExplorerActivity localFileExplorerActivity = (FileExplorerActivity)a.ag;
    if (localFileExplorerActivity != null) {
      localFileExplorerActivity.h();
    }
    bm.c().a(str, paramString, 2, null, true);
    super.onPageFinished(paramWebView, paramString);
    paramWebView = (Integer)WebViewWrapper.a(a).get(a.C.hashCode());
    if (paramWebView != null) {
      a.W.postDelayed(new gi(this, paramWebView), 100L);
    }
    WebViewWrapper.b(a);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    WebViewWrapper.d(a, paramString);
    WebViewWrapper.a(a, true);
    WebViewWrapper.b(a, false);
    if (a.O != null) {
      a.O.a();
    }
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (!WebViewWrapper.a(a, paramString)) {
      return true;
    }
    if (WebViewWrapper.b(a, paramString)) {
      return true;
    }
    if (WebViewWrapper.c(a, paramString))
    {
      if (paramString.contains("?")) {}
      for (paramWebView = paramString + WebViewWrapper.D().replace("?", "&");; paramWebView = paramString + WebViewWrapper.D())
      {
        if (a.a != null)
        {
          a.a.stopLoading();
          a.a.loadUrl(paramWebView);
        }
        WebViewWrapper.d(a, paramWebView);
        return true;
      }
    }
    WebViewWrapper.d(a, paramString);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */