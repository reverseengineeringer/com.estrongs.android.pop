package com.estrongs.android.view;

import android.webkit.JavascriptInterface;

class VideoEnabledWebView$JSVideoDetailHelper
{
  VideoEnabledWebView$JSVideoDetailHelper(VideoEnabledWebView paramVideoEnabledWebView) {}
  
  @JavascriptInterface
  public void setVideoSource(String paramString)
  {
    if (VideoEnabledWebView.a(a) != null) {
      VideoEnabledWebView.a(a).a(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.VideoEnabledWebView.JSVideoDetailHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */