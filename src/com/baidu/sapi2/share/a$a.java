package com.baidu.sapi2.share;

import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.SapiAccountManager.SilentShareListener;

final class a$a
  implements Runnable
{
  public void run()
  {
    if (SapiAccountManager.getSilentShareListener() != null) {
      SapiAccountManager.getSilentShareListener().onSilentShare();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */