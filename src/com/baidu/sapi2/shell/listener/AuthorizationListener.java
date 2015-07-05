package com.baidu.sapi2.shell.listener;

public abstract class AuthorizationListener
{
  public abstract void onFailed(int paramInt, String paramString);
  
  public boolean onForgetPwd()
  {
    return false;
  }
  
  public abstract void onSuccess();
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.listener.AuthorizationListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */