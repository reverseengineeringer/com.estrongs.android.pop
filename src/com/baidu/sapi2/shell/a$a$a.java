package com.baidu.sapi2.shell;

import com.baidu.sapi2.shell.callback.SapiCallBack;
import com.baidu.sapi2.shell.response.SapiResponse;
import com.baidu.sapi2.utils.e;

class a$a$a
  implements SapiCallBack<SapiResponse>
{
  a$a$a(a.a parama) {}
  
  public void onNetworkFailed() {}
  
  public void onSuccess(SapiResponse paramSapiResponse)
  {
    if (a.a(a.d).c())
    {
      a.a(a.d).d();
      return;
    }
    a.a(a.d).b();
    a.d.a(a.b, a.c, a.a);
  }
  
  public void onSystemError(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */