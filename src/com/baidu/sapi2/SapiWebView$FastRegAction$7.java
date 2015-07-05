package com.baidu.sapi2;

import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.SapiAccountResponse;

class SapiWebView$FastRegAction$7
  implements SapiCallBack<SapiAccountResponse>
{
  SapiWebView$FastRegAction$7(SapiWebView.FastRegAction paramFastRegAction) {}
  
  public void onNetworkFailed()
  {
    SapiWebView.FastRegAction.j(a);
    SapiWebView.FastRegAction.k(a);
  }
  
  public void onSuccess(SapiAccountResponse paramSapiAccountResponse)
  {
    if (newReg) {
      SapiWebView.b(a.a, paramSapiAccountResponse);
    }
    for (;;)
    {
      SapiWebView.FastRegAction.k(a);
      return;
      SapiWebView.c(a.a, paramSapiAccountResponse);
    }
  }
  
  public void onSystemError(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      SapiWebView.FastRegAction.j(a);
      SapiWebView.FastRegAction.k(a);
      return;
    }
    a.a.postDelayed(new SapiWebView.FastRegAction.7.1(this), 400L);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.FastRegAction.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */