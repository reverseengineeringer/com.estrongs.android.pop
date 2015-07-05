package com.baidu.sapi2;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.baidu.sapi2.utils.L;

class SapiWebView$5
  implements DownloadListener
{
  SapiWebView$5(SapiWebView paramSapiWebView) {}
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      paramString1 = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
      paramString1.setFlags(268435456);
      a.getContext().startActivity(paramString1);
      return;
    }
    catch (Throwable paramString1)
    {
      L.e(paramString1, paramString1.getMessage(), new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */