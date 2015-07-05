package com.baidu.sapi2;

import android.view.View;
import android.widget.ProgressBar;

class SapiWebView$8
  implements Runnable
{
  SapiWebView$8(SapiWebView paramSapiWebView) {}
  
  public void run()
  {
    if (SapiWebView.g(a) != null) {
      SapiWebView.g(a).setVisibility(8);
    }
    if (SapiWebView.z(a) != null) {
      SapiWebView.z(a).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */