package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.SapiResponse;

public abstract interface SapiCallBack<R extends SapiResponse>
{
  public abstract void onNetworkFailed();
  
  public abstract void onSuccess(R paramR);
  
  public abstract void onSystemError(int paramInt);
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.SapiCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */