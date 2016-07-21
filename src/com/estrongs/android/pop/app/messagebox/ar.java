package com.estrongs.android.pop.app.messagebox;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;

class ar
  extends WebChromeClient
{
  private ar(WebActivity paramWebActivity) {}
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (WebActivity.e(a).getVisibility() != 0) {
      WebActivity.e(a).setVisibility(0);
    }
    if (paramInt < 10) {
      WebActivity.e(a).setProgress(WebActivity.e(a).getMax() / 10);
    }
    for (;;)
    {
      super.onProgressChanged(paramWebView, paramInt);
      do
      {
        return;
        if (paramInt < 100)
        {
          WebActivity.e(a).setProgress(WebActivity.e(a).getMax() * paramInt / 100);
          break;
        }
        WebActivity.e(a).setVisibility(8);
      } while ((WebActivity.f(a)) || (WebActivity.g(a)));
      WebActivity.b(a, true);
    }
  }
  
  public void onReceivedTitle(WebView paramWebView, String paramString)
  {
    super.onReceivedTitle(paramWebView, paramString);
    WebActivity.d(a).setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */