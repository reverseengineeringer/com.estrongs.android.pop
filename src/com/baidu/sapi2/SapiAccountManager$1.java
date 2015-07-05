package com.baidu.sapi2;

import android.os.Looper;
import android.text.TextUtils;
import com.baidu.sapi2.shell.SapiAccountService;
import com.baidu.sapi2.utils.SapiUtils;
import com.baidu.sapi2.utils.a;

class SapiAccountManager$1
  implements Runnable
{
  SapiAccountManager$1(SapiAccountManager paramSapiAccountManager, SapiConfiguration paramSapiConfiguration) {}
  
  public void run()
  {
    Looper.prepare();
    a.clientId = SapiUtils.getClientId(a.context);
    a.clientIp = SapiUtils.getLocalIpAddress();
    com.baidu.sapi2.share.b.c();
    if (a.syncCacheOnInit) {
      SapiCache.init(a.context);
    }
    if (!TextUtils.isEmpty(a.deviceLoginSignKey)) {
      SapiAccountManager.b().p();
    }
    a.a();
    SapiAccountManager.c().b("6.9.2");
    SapiAccountManager.c().a(a.loginShareStrategy());
    com.baidu.sapi2.utils.b.a(a.context);
    Looper.loop();
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiAccountManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */