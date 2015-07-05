package com.baidu.sapi2;

import android.widget.Toast;

public class SapiWebView$DefaultWeixinHandler
  implements SapiWebView.WeixinHandler
{
  public SapiWebView$DefaultWeixinHandler(SapiWebView paramSapiWebView) {}
  
  public void handleNotInstall()
  {
    Toast.makeText(a.getContext(), "微信未安装", 1).show();
  }
  
  public void handleServerError(String paramString)
  {
    Toast.makeText(a.getContext(), "服务错误，请稍后重试", 1).show();
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.DefaultWeixinHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */