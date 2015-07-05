package com.baidu.sapi2;

import android.os.Build.VERSION;
import android.webkit.WebSettings;

class SapiWebView$7
  implements Runnable
{
  SapiWebView$7(SapiWebView paramSapiWebView, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {}
  
  public void run()
  {
    if (Build.VERSION.SDK_INT > 7) {
      f.getSettings().setBlockNetworkLoads(true);
    }
    SapiWebView.a(f, a, b, c, d, e);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */