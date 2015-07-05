package com.baidu.sapi2;

import android.os.Handler;
import com.baidu.sapi2.shell.SapiAccountService;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.SapiResponse;

class SapiWebView$FastRegAction$8
  implements SapiCallBack<SapiResponse>
{
  SapiWebView$FastRegAction$8(SapiWebView.FastRegAction paramFastRegAction) {}
  
  public void onNetworkFailed()
  {
    a.a.loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "&regLink=0" + "#sms_login");
  }
  
  public void onSuccess(SapiResponse paramSapiResponse)
  {
    SapiWebView.a(a.a, SapiWebView.FastRegAction.l(a));
    SapiWebView.FastRegAction.c(a).postDelayed(SapiWebView.FastRegAction.b(a), 15000L);
  }
  
  public void onSystemError(int paramInt)
  {
    a.a.loadUrl(SapiAccountManager.getInstance().getAccountService().a() + "&regLink=0" + "#sms_login");
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.FastRegAction.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */