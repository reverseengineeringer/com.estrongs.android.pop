package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.FillUserProfileCallBack;

class a$l
  extends HttpResponseHandler
{
  a$l(a parama, FillUserProfileCallBack paramFillUserProfileCallBack, String paramString) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    a.a(c, a, b, paramString);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    a.a(c, a, b, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */