package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.SapiAccount.ReloginCredentials;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.utils.e;

class a$h
  extends HttpResponseHandler
{
  a$h(a parama, SapiCallBack paramSapiCallBack, SapiAccount.ReloginCredentials paramReloginCredentials) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    if (a.a(c).c())
    {
      a.a(c).d();
      a.a(c, c.a(paramString), a, paramString);
      return;
    }
    a.a(c).b();
    c.a(a, b);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    a.a(c, c.a(paramString), a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */