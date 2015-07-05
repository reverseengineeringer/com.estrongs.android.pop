package com.baidu.sapi2;

import com.baidu.sapi2.shell.listener.AuthorizationListener;

public class SapiWebView$DefaultAuthorizationListener
  extends AuthorizationListener
{
  public SapiWebView$DefaultAuthorizationListener(SapiWebView paramSapiWebView) {}
  
  public void onFailed(int paramInt, String paramString)
  {
    a.finish();
  }
  
  public void onSuccess()
  {
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.DefaultAuthorizationListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */