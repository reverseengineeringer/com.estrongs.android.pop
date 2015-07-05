package com.baidu.sapi2;

import android.os.Handler;
import android.os.Message;

class SapiWebView$TimeoutTask
  implements Runnable
{
  private String b;
  
  private SapiWebView$TimeoutTask(SapiWebView paramSapiWebView) {}
  
  public void run()
  {
    if (a.getProgress() < 100)
    {
      Message localMessage = new Message();
      what = 1;
      obj = b;
      SapiWebView.b(a).sendMessage(localMessage);
      SapiWebView.b(a).removeCallbacks(this);
    }
  }
  
  public void setUrl(String paramString)
  {
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.TimeoutTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */