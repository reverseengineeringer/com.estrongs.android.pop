package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.GetUserInfoResponse;

public abstract class GetUserInfoCallBack
  implements SapiCallBack<GetUserInfoResponse>
{
  public abstract void onBdussInvalid();
  
  public abstract void onFinish();
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.GetUserInfoCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */