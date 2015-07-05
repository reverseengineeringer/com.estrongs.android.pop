package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.shell.listener.AuthorizationListener;
import com.estrongs.android.pop.ad;
import com.estrongs.android.util.a;
import com.estrongs.android.util.bd;

class p
  extends AuthorizationListener
{
  p(o paramo) {}
  
  public void onFailed(int paramInt, String paramString) {}
  
  public void onSuccess()
  {
    if (!o.a(a)) {
      return;
    }
    if (o.b(a).a() == null)
    {
      o.b(a).d();
      localObject2 = com.estrongs.android.pop.b.b();
      localObject1 = localObject2;
      if (!((String)localObject2).endsWith("/")) {
        localObject1 = (String)localObject2 + "/";
      }
      com.estrongs.fs.a.b.a().a((String)localObject1 + "*");
    }
    o.b(a).a(null);
    if (o.c(a) != null) {
      o.c(a).dismiss();
    }
    Object localObject1 = a.a();
    if (localObject1 != null) {
      ((a)localObject1).e("PCS_Upgrade_UV", "PCS_Upgrade_UV");
    }
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
    localObject1 = bduss + "\n" + (String)localObject2;
    localObject1 = "login:" + bd.c((String)localObject1);
    localObject1 = aj.a(o.d(a), (String)localObject1, o.e(a), o.f(a), null);
    if ((!o.e(a)) && (o.g(a) != null))
    {
      o.g(a).a(1);
      o.g(a).a((String)localObject1);
    }
    o.a(a, (String)localObject1);
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */