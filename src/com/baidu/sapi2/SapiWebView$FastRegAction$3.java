package com.baidu.sapi2;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;

class SapiWebView$FastRegAction$3
  extends Handler
{
  SapiWebView$FastRegAction$3(SapiWebView.FastRegAction paramFastRegAction, SapiWebView paramSapiWebView) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (obj != null)
    {
      paramMessage = (String)obj;
      String str = SapiWebView.FastRegAction.e(b);
      if ((!TextUtils.isEmpty(str)) && (SapiWebView.FastRegAction.f(b) == 1)) {
        SapiWebView.FastRegAction.a(b, str, paramMessage);
      }
      SapiWebView.h(b.a);
      SapiWebView.FastRegAction.c(b).removeCallbacks(SapiWebView.FastRegAction.b(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.FastRegAction.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */