package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.SapiResponse;

public abstract class VoiceLoginCallBack
  implements SapiCallBack<SapiResponse>
{
  public void onFinish() {}
  
  public void onNotEnabled() {}
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.VoiceLoginCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */