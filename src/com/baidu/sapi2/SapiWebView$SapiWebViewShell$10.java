package com.baidu.sapi2;

import com.baidu.sapi2.shell.listener.AuthorizationListener;

class SapiWebView$SapiWebViewShell$10
  implements Runnable
{
  SapiWebView$SapiWebViewShell$10(SapiWebView.SapiWebViewShell paramSapiWebViewShell, boolean[] paramArrayOfBoolean1, boolean[] paramArrayOfBoolean2) {}
  
  public void run()
  {
    if (SapiWebView.m(c.a) != null) {
      a[0] = SapiWebView.m(c.a).onForgetPwd();
    }
    b[0] = true;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.SapiWebViewShell.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */