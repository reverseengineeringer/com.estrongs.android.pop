package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.SapiAccountResponse;

public abstract class FillUserProfileCallBack
  implements SapiCallBack<SapiAccountResponse>
{
  public abstract void onBdussInvalid();
  
  public abstract void onFinish();
  
  public abstract void onPhoneUnavailable();
  
  public abstract void onSimUnavailable();
  
  public abstract void onUserNormalized();
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.FillUserProfileCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */