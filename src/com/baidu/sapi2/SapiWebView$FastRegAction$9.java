package com.baidu.sapi2;

import android.text.TextUtils;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.SapiAccountResponse;

class SapiWebView$FastRegAction$9
  implements SapiCallBack<SapiAccountResponse>
{
  SapiWebView$FastRegAction$9(SapiWebView.FastRegAction paramFastRegAction) {}
  
  public void onNetworkFailed()
  {
    SapiWebView.FastRegAction.a(a, SapiWebView.FastRegAction.e(a));
  }
  
  public void onSuccess(SapiAccountResponse paramSapiAccountResponse)
  {
    SapiAccountResponse localSapiAccountResponse = new SapiAccountResponse();
    displayname = displayname;
    username = username;
    uid = uid;
    bduss = bduss;
    ptoken = ptoken;
    stoken = stoken;
    email = email;
    if (!TextUtils.isEmpty(authSid)) {}
    for (boolean bool = true;; bool = false)
    {
      newReg = bool;
      authSid = authSid;
      if (!newReg) {
        break;
      }
      SapiWebView.b(a.a, localSapiAccountResponse);
      return;
    }
    SapiWebView.c(a.a, localSapiAccountResponse);
    a.a.finish();
  }
  
  public void onSystemError(int paramInt)
  {
    SapiWebView.FastRegAction.a(a, SapiWebView.FastRegAction.e(a));
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiWebView.FastRegAction.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */