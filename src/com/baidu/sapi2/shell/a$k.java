package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.SapiResponse;
import com.baidu.sapi2.utils.e;

class a$k
  extends HttpResponseHandler
{
  a$k(a parama, SapiCallBack paramSapiCallBack, String paramString1, String paramString2, String paramString3, byte[] paramArrayOfByte, String paramString4) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(g).c())
    {
      a.a(g).d();
      a.onSystemError(-100);
      return;
    }
    a.a(g).b();
    g.a(a, b, c, d, e, f);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    a.a(g).d();
    paramInt = g.a(paramString);
    if (paramInt == 0)
    {
      paramString = new SapiResponse();
      errorCode = paramInt;
      errorMsg = "设置头像成功";
      a.onSuccess(paramString);
      return;
    }
    a.onSystemError(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */