package com.estrongs.android.view;

import android.widget.ProgressBar;

class gp
  implements Runnable
{
  gp(WebViewWrapper paramWebViewWrapper) {}
  
  public void run()
  {
    WebViewWrapper.e(a).setVisibility(0);
    StringBuilder localStringBuilder;
    WebViewWrapper localWebViewWrapper;
    if (WebViewWrapper.c(a, a.C))
    {
      if (!a.C.contains("?")) {
        break label99;
      }
      localStringBuilder = new StringBuilder();
      localWebViewWrapper = a;
    }
    for (C += WebViewWrapper.D().replace("?", "&");; C += WebViewWrapper.D())
    {
      WebViewWrapper.f(a, a.C);
      return;
      label99:
      localStringBuilder = new StringBuilder();
      localWebViewWrapper = a;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */