package com.baidu.sapi2.shell.callback;

import com.baidu.sapi2.shell.response.SapiAccountResponse;

public abstract class FillUsernameCallBack
  implements SapiCallBack<SapiAccountResponse>
{
  public abstract void onInvalidBduss();
  
  public abstract void onUserHaveUsername();
  
  public abstract void onUsernameAlreadyExist();
  
  public abstract void onUsernameFormatError();
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.callback.FillUsernameCallBack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */