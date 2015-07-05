package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.FillUsernameCallBack;

class a$m
  extends HttpResponseHandler
{
  a$m(a parama, FillUsernameCallBack paramFillUsernameCallBack, b paramb) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    a.a(c, c.b(paramString), a, paramString, b);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    a.a(c, c.b(paramString), a, paramString, b);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */