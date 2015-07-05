package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.QrAppLoginCallBack;
import com.baidu.sapi2.utils.e;

class a$z
  extends HttpResponseHandler
{
  a$z(a parama, QrAppLoginCallBack paramQrAppLoginCallBack, String paramString1, String paramString2) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    if (a.a(d).c())
    {
      a.a(d).d();
      d.a(d.b(paramString), a, paramString);
      return;
    }
    a.a(d).b();
    d.a(a, b, c);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    a.a(d).d();
    d.a(paramInt, a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */