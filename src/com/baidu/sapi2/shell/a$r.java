package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.VoiceCheckCallBack;
import com.baidu.sapi2.utils.e;

class a$r
  extends HttpResponseHandler
{
  a$r(a parama, VoiceCheckCallBack paramVoiceCheckCallBack, String paramString, boolean paramBoolean1, boolean paramBoolean2) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(e).c())
    {
      a.a(e).d();
      a.a(e, a, paramString);
      return;
    }
    a.a(e).b();
    e.a(a, b, c, d);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    a.a(e).d();
    a.a(e, a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */