package com.estrongs.android.ui.pcs;

import com.baidu.sapi2.SapiAccount;
import com.baidu.sapi2.SapiAccountManager;
import com.baidu.sapi2.shell.listener.AuthorizationListener;
import com.estrongs.android.util.bk;

class m
  extends AuthorizationListener
{
  m(l paraml) {}
  
  public void onFailed(int paramInt, String paramString) {}
  
  public void onSuccess()
  {
    if (!l.a(a)) {
      return;
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
    Object localObject1 = bduss + "\n" + (String)localObject2;
    localObject1 = "login:" + bk.c((String)localObject1);
    localObject1 = am.a(l.b(a), (String)localObject1, l.c(a), l.d(a), l.e(a));
    if ((!l.c(a)) && (l.f(a) != null))
    {
      l.f(a).a(1);
      l.f(a).a((String)localObject1);
    }
    l.a(a, (String)localObject1);
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.pcs.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */