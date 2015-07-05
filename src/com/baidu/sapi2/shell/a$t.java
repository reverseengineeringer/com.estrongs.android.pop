package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.utils.e;

class a$t
  extends HttpResponseHandler
{
  a$t(a parama, SapiCallBack paramSapiCallBack, String paramString) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    if (a.a(c).c())
    {
      a.a(c).d();
      c.f(a, paramString);
      return;
    }
    a.a(c).b();
    c.b(a, b);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    a.a(c).d();
    c.f(a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */