package com.baidu.sapi2.shell;

import com.baidu.cloudsdk.common.http.HttpResponseHandler;
import com.baidu.sapi2.shell.callback.VoiceRegCallBack;
import com.baidu.sapi2.utils.e;

class a$o
  extends HttpResponseHandler
{
  a$o(a parama, VoiceRegCallBack paramVoiceRegCallBack, boolean paramBoolean, String paramString1, String paramString2, String paramString3) {}
  
  protected void onFailure(Throwable paramThrowable, String paramString)
  {
    if (a.a(f).c())
    {
      a.a(f).d();
      a.a(f, a, paramString, b);
      return;
    }
    a.a(f).b();
    f.a(a, c, d, e, b);
  }
  
  protected void onSuccess(int paramInt, String paramString)
  {
    a.a(f).d();
    a.a(f, a, paramString, b);
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */