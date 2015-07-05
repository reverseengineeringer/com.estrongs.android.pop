package com.baidu.sapi2;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;

class SapiWebView$SmsHandler
  extends Handler
{
  String a;
  String b;
  
  private SapiWebView$SmsHandler(SapiWebView paramSapiWebView) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (obj != null)
    {
      paramMessage = (String)obj;
      if ((!TextUtils.isEmpty(a)) && (!TextUtils.isEmpty(b)))
      {
        paramMessage = String.format("javascript:%s('%s','%s');", new Object[] { a, paramMessage, b });
        c.loadUrl(paramMessage);
        if (!TextUtils.isEmpty(SapiWebView.i(c))) {
          post(new SapiWebView.SmsHandler.1(this));
        }
      }
      SapiWebView.h(c);
      removeCallbacks(SapiWebView.j(c));
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.SmsHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */