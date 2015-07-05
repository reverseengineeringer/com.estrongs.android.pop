package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.OAuthCallBack;
import com.baidu.sapi2.utils.e;

class a$p
  extends HttpResponseHandler
{
  a$p(a parama, OAuthCallBack paramOAuthCallBack, String paramString) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    super.onFailure(paramThrowable, paramString);
    if (a.a(c).c())
    {
      a.a(c).d();
      c.b(a, paramString);
      return;
    }
    a.a(c).b();
    c.a(a, b);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    super.onSuccess(paramInt, paramString);
    a.a(c).d();
    c.b(a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */