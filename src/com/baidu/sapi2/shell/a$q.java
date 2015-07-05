package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.VoiceCheckCallBack;
import com.baidu.sapi2.utils.e;

class a$q
  extends HttpResponseHandler
{
  a$q(a parama, VoiceCheckCallBack paramVoiceCheckCallBack, String paramString) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(c).c())
    {
      a.a(c).d();
      a.a(c, a, paramString);
      return;
    }
    a.a(c).b();
    c.a(a, b);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    a.a(c).d();
    a.a(c, a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */