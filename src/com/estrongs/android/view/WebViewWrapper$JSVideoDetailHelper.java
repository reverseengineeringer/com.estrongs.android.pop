package com.estrongs.android.view;

import android.webkit.JavascriptInterface;
import com.estrongs.android.util.bk;

public class WebViewWrapper$JSVideoDetailHelper
{
  public WebViewWrapper$JSVideoDetailHelper(WebViewWrapper paramWebViewWrapper) {}
  
  @JavascriptInterface
  public void setVideoSource(String paramString)
  {
    if (bk.b(paramString)) {
      bk.a(new gs(this, paramString));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.WebViewWrapper.JSVideoDetailHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */