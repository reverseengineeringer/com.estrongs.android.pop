package com.baidu.sapi2;

import android.text.TextUtils;
import com.baidu.sapi2.share.b;
import com.baidu.sapi2.shell.SapiAccountService;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.SapiUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class SapiAccountManager
{
  public static final String SESSION_BDUSS = "bduss";
  public static final String SESSION_DISPLAYNAME = "displayname";
  public static final String SESSION_PTOKEN = "ptoken";
  public static final String SESSION_STOKEN = "stoken";
  public static final String SESSION_UID = "uid";
  public static final int VERSION_CODE = 47;
  public static final String VERSION_NAME = "6.9.2";
  private static SapiAccountManager a;
  private static SapiConfiguration b;
  private static c c;
  private static SapiAccountService d;
  private static SapiAccountManager.SilentShareListener e;
  private static SapiAccountManager.ReceiveShareListener f;
  private static final List<String> g = new ArrayList();
  
  static
  {
    g.addAll(Arrays.asList(new String[] { "uid", "displayname", "bduss", "ptoken", "stoken" }));
  }
  
  public static SapiAccountManager getInstance()
  {
    try
    {
      if (a == null) {
        a = new SapiAccountManager();
      }
      SapiAccountManager localSapiAccountManager = a;
      return localSapiAccountManager;
    }
    finally {}
  }
  
  public static SapiAccountManager.ReceiveShareListener getReceiveShareListener()
  {
    return f;
  }
  
  public static SapiAccountManager.SilentShareListener getSilentShareListener()
  {
    return e;
  }
  
  public static void registerReceiveShareListener(SapiAccountManager.ReceiveShareListener paramReceiveShareListener)
  {
    f = paramReceiveShareListener;
  }
  
  public static void registerSilentShareListener(SapiAccountManager.SilentShareListener paramSilentShareListener)
  {
    e = paramSilentShareListener;
  }
  
  public static void unregisterReceiveShareListener()
  {
    f = null;
  }
  
  public static void unregisterSilentShareListener()
  {
    e = null;
  }
  
  void a()
  {
    if (b == null) {
      throw new IllegalStateException(getClass().getSimpleName() + " have not been initialized");
    }
  }
  
  boolean a(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (g.contains(paramString));
  }
  
  public SapiAccountService getAccountService()
  {
    a();
    return d;
  }
  
  public List<SapiAccount> getLoginAccounts()
  {
    a();
    return c.f();
  }
  
  public SapiConfiguration getSapiConfiguration()
  {
    a();
    return b;
  }
  
  public SapiAccount getSession()
  {
    a();
    return c.d();
  }
  
  public String getSession(String paramString)
  {
    a();
    return getSession(paramString, null);
  }
  
  public String getSession(String paramString1, String paramString2)
  {
    a();
    if ((!a(paramString1)) || (!isLogin()) || (getSession() == null)) {}
    JSONObject localJSONObject;
    do
    {
      return paramString2;
      localJSONObject = getSession().toJSONObject();
    } while (localJSONObject == null);
    return localJSONObject.optString(paramString1, paramString2);
  }
  
  public List<SapiAccount> getShareAccounts()
  {
    a();
    Object localObject = c.e();
    ArrayList localArrayList = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      SapiAccount localSapiAccount = (SapiAccount)((Iterator)localObject).next();
      if (SapiUtils.isValidAccount(localSapiAccount)) {
        localArrayList.add(localSapiAccount);
      } else {
        c.d(localSapiAccount);
      }
    }
    Collections.reverse(localArrayList);
    return localArrayList;
  }
  
  public void init(SapiConfiguration paramSapiConfiguration)
  {
    if (paramSapiConfiguration == null) {
      try
      {
        throw new IllegalArgumentException(getClass().getSimpleName() + " initialized failed: SapiConfiguration can't be null");
      }
      finally {}
    }
    if (b == null)
    {
      b = paramSapiConfiguration;
      c = c.a(context);
      d = new SapiAccountService(context);
      new Thread(new SapiAccountManager.1(this, paramSapiConfiguration)).start();
    }
    for (;;)
    {
      return;
      L.d(getClass().getSimpleName() + " had already been initialized", new Object[0]);
    }
  }
  
  public boolean isLogin()
  {
    a();
    return c.d() != null;
  }
  
  public void logout()
  {
    a();
    b.a().b();
  }
  
  public void removeLoginAccount(SapiAccount paramSapiAccount)
  {
    a();
    c.e(paramSapiAccount);
  }
  
  public boolean validate(SapiAccount paramSapiAccount)
  {
    a();
    if (!SapiUtils.isValidAccount(paramSapiAccount)) {
      return false;
    }
    b.a().a(paramSapiAccount);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.SapiAccountManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */