package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.QrPCLoginResponse;

public abstract class QrPCLoginCallBack
  implements SapiCallBack<QrPCLoginResponse>
{
  public abstract void onBdussInvalid();
  
  public void onFinish() {}
  
  public void onNetworkFailed() {}
  
  public abstract void onQrCodeInvalid();
  
  public abstract void onUserNotNormalized();
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.QrPCLoginCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */