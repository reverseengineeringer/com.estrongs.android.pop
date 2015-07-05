package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.VoiceCheckResponse;

public abstract class VoiceCheckCallBack
  implements SapiCallBack<VoiceCheckResponse>
{
  public abstract void onBdussInvalid();
  
  public void onFinish() {}
  
  public abstract void onLoginMergeConfirm();
  
  public void onNotEnabled() {}
  
  public abstract void onUserForbidden();
  
  public abstract void onUserNotNormalized();
  
  public abstract void onUsernameNotExist();
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.VoiceCheckCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */