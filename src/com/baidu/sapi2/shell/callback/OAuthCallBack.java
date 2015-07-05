package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.OAuthResponse;

public abstract class OAuthCallBack
  implements SapiCallBack<OAuthResponse>
{
  public abstract void onFinish();
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.OAuthCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */