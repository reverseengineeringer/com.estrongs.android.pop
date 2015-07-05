package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;

class a$x
  extends HttpResponseHandler
{
  a$x(a parama, SapiCallBack paramSapiCallBack) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    b.b(b.b(paramString), a, paramString);
    super.onFailure(paramThrowable, paramString);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    b.b(paramInt, a, paramString);
    super.onSuccess(paramInt, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */