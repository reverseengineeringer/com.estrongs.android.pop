package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.shell.listener.AuthorizationListener;
import com.estrongs.android.j.c;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.bk;

class s
  extends AuthorizationListener
{
  s(r paramr) {}
  
  public void onFailed(int paramInt, String paramString) {}
  
  public void onSuccess()
  {
    if (!r.a(a)) {
      return;
    }
    if (r.b(a).b() == null)
    {
      r.b(a).e();
      localObject2 = com.estrongs.android.pop.b.b();
      localObject1 = localObject2;
      if (!((String)localObject2).endsWith("/")) {
        localObject1 = (String)localObject2 + "/";
      }
      com.estrongs.fs.a.b.a().a((String)localObject1 + "*");
    }
    r.b(a).a(null);
    if (r.c(a) != null) {
      r.c(a).dismiss();
    }
    if (c.a(r.d(a)) != null) {}
    SapiAccount localSapiAccount = SapiAccountManager.getInstance().getSession();
    Object localObject2 = username;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if (((String)localObject2).length() != 0) {}
    }
    else
    {
      localObject1 = email;
    }
    if (localObject1 != null)
    {
      localObject2 = localObject1;
      if (((String)localObject1).length() != 0) {}
    }
    else
    {
      localObject2 = uid;
    }
    Object localObject1 = bduss + "\n" + (String)localObject2;
    localObject1 = "login:" + bk.c((String)localObject1);
    localObject1 = am.a(r.d(a), (String)localObject1, r.e(a), r.f(a), null);
    if ((!r.e(a)) && (r.g(a) != null))
    {
      r.g(a).a(1);
      r.g(a).a((String)localObject1);
    }
    r.a(a, (String)localObject1);
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */