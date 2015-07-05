package com.baidu.sapi2;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.Toast;
import com.baidu.sapi2.plugin.SSOError;
import com.baidu.sapi2.plugin.SSOListener;
import com.baidu.sapi2.shell.SapiAccountService;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.enums.SocialType;

class SapiWebView$10
  implements SSOListener
{
  SapiWebView$10(SapiWebView paramSapiWebView) {}
  
  public void onCancel() {}
  
  public void onComplete(Bundle paramBundle)
  {
    String str = paramBundle.getString("access_token");
    paramBundle = paramBundle.getString("uid");
    paramBundle = SapiAccountManager.getInstance().getAccountService().a(SocialType.SINA_WEIBO, str, paramBundle);
    a.loadUrl(paramBundle);
  }
  
  public void onError(SSOError paramSSOError)
  {
    L.e(paramSSOError);
    Toast.makeText(a.getContext(), paramSSOError.getMessage(), 0).show();
  }
  
  public void onJumpNormal()
  {
    if (SapiWebView.s(a) != null)
    {
      Message localMessage = new Message();
      what = SocialType.SINA_WEIBO.getType();
      SapiWebView.s(a).sendMessage(localMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */