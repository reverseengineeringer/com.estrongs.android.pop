package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.SapiCallBack;

class a$y
  extends HttpResponseHandler
{
  a$y(a parama, SapiCallBack paramSapiCallBack) {}
  
  public void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    b.a(b.b(paramString), a, paramString);
  }
  
  public void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    b.a(paramInt, a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */