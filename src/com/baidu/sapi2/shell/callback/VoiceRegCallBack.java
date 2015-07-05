package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.SapiResponse;

public abstract class VoiceRegCallBack
  implements SapiCallBack<SapiResponse>
{
  public abstract void onAuthExpired();
  
  public void onFinish() {}
  
  public void onNotEnabled() {}
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.VoiceRegCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */