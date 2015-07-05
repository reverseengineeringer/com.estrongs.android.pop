package com.baidu.sapi2.share;

import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiConfiguration;

final class b$e
  implements Runnable
{
  public void run()
  {
    SapiAccount localSapiAccount = c.a(econtext);
    if (localSapiAccount != null)
    {
      b.g().a(localSapiAccount);
      b.g().c(localSapiAccount);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */