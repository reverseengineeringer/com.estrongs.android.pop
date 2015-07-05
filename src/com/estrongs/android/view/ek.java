package com.estrongs.android.view;

import android.widget.ProgressBar;

class ek
  implements Runnable
{
  ek(WebViewWrapper paramWebViewWrapper) {}
  
  public void run()
  {
    WebViewWrapper.e(a).setVisibility(0);
    StringBuilder localStringBuilder;
    WebViewWrapper localWebViewWrapper;
    if (WebViewWrapper.c(a, a.v))
    {
      if (!a.v.contains("?")) {
        break label99;
      }
      localStringBuilder = new StringBuilder();
      localWebViewWrapper = a;
    }
    for (v += WebViewWrapper.av().replace("?", "&");; v += WebViewWrapper.av())
    {
      WebViewWrapper.f(a, a.v);
      return;
      label99:
      localStringBuilder = new StringBuilder();
      localWebViewWrapper = a;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */