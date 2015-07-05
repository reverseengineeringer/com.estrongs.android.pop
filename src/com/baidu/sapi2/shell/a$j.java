package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.utils.e;

class a$j
  extends HttpResponseHandler
{
  a$j(a parama, SapiCallBack paramSapiCallBack, boolean paramBoolean, b paramb, String paramString1, String paramString2) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    if (a.a(f).c())
    {
      a.a(f).d();
      f.a(f.a(paramString), a, paramString, b, c);
      return;
    }
    a.a(f).b();
    f.a(a, d, e, b);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    f.a(f.a(paramString), a, paramString, b, c);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */