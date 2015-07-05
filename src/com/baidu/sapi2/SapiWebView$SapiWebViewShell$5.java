package com.baidu.sapi2;

import com.baidu.sapi2.shell.listener.AuthorizationListener;
import com.baidu.sapi2.shell.response.SapiAccountResponse;

class SapiWebView$SapiWebViewShell$5
  implements Runnable
{
  SapiWebView$SapiWebViewShell$5(SapiWebView.SapiWebViewShell paramSapiWebViewShell, SapiAccountResponse paramSapiAccountResponse) {}
  
  public void run()
  {
    SapiWebView.m(b.a).onFailed(a.errorCode, a.errorMsg);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.SapiWebViewShell.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */