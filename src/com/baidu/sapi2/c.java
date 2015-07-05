package com.baidu.sapi2;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.baidu.sapi2.share.e;
import com.baidu.sapi2.utils.L;
import com.baidu.sapi2.utils.enums.LoginShareStrategy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class c
{
  private static final String a = "sapi_version";
  private static final String b = "login_share_strategy";
  private static final String c = "current_account";
  private static final String d = "share_accounts";
  private static final String e = "login_accounts";
  private static final String f = "first_install";
  private static final String g = "login_status_changed";
  private static final String h = "voluntary_share_version";
  private static final String i = "sapi_options";
  private static final String j = "relogin_credentials";
  private static final String k = "cuidtoken";
  private static final String l = "device_token";
  private static final String m = "device_login_available";
  private static final String n = "hosts_hijacked";
  private static final String o = "stat_items";
  private static final String p = "sync_token";
  private static final String q = "sync_token_expired";
  private static final String r = "time_offset_seconds";
  private static c u;
  private SharedPreferences s;
  private Context t;
  
  private c(Context paramContext)
  {
    t = paramContext;
    s = paramContext.getSharedPreferences("sapi_system", 0);
  }
  
  public static c a(Context paramContext)
  {
    try
    {
      if (u == null) {
        u = new c(paramContext.getApplicationContext());
      }
      return u;
    }
    finally {}
  }
  
  private void a(String paramString, int paramInt)
  {
    if (Build.VERSION.SDK_INT > 8)
    {
      s.edit().putInt(paramString, paramInt).apply();
      return;
    }
    s.edit().putInt(paramString, paramInt).commit();
  }
  
  private void a(String paramString1, String paramString2)
  {
    if (Build.VERSION.SDK_INT > 8)
    {
      s.edit().putString(paramString1, paramString2).apply();
      return;
    }
    s.edit().putString(paramString1, paramString2).commit();
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT > 8)
    {
      s.edit().putBoolean(paramString, paramBoolean).apply();
      return;
    }
    s.edit().putBoolean(paramString, paramBoolean).commit();
  }
  
  private void a(List<SapiAccount> paramList)
  {
    paramList = SapiAccount.toJSONArray(paramList);
    if (paramList != null) {
      a("share_accounts", paramList.toString());
    }
  }
  
  private int b(String paramString, int paramInt)
  {
    return s.getInt(paramString, paramInt);
  }
  
  private void b(List<SapiAccount> paramList)
  {
    paramList = SapiAccount.toJSONArray(paramList);
    if (paramList != null) {
      a("login_accounts", paramList.toString());
    }
  }
  
  private boolean b(String paramString, boolean paramBoolean)
  {
    return s.getBoolean(paramString, paramBoolean);
  }
  
  private String g(String paramString)
  {
    return s.getString(paramString, "");
  }
  
  private void v()
  {
    a("login_status_changed", true);
  }
  
  public String a()
  {
    return g("device_token");
  }
  
  public void a(int paramInt)
  {
    a("voluntary_share_version", paramInt);
  }
  
  public void a(SapiAccount paramSapiAccount)
  {
    if (paramSapiAccount == null) {
      a("current_account", "");
    }
    do
    {
      do
      {
        return;
        paramSapiAccount = paramSapiAccount.toJSONObject();
      } while (paramSapiAccount == null);
      a("current_account", paramSapiAccount.toString());
    } while (h());
    v();
  }
  
  public void a(b paramb)
  {
    if (paramb != null) {
      a("sapi_options", paramb.j());
    }
  }
  
  public void a(LoginShareStrategy paramLoginShareStrategy)
  {
    if (paramLoginShareStrategy != null) {
      a("login_share_strategy", paramLoginShareStrategy.getStrValue());
    }
  }
  
  public void a(String paramString)
  {
    a("device_token", paramString);
  }
  
  public void a(String paramString, SapiAccount.ReloginCredentials paramReloginCredentials)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramReloginCredentials == null) || (TextUtils.isEmpty(account)) || (TextUtils.isEmpty(password)) || (TextUtils.isEmpty(ubi)) || (TextUtils.isEmpty(accountType))) {
      return;
    }
    d(ubi);
    JSONObject localJSONObject2 = l();
    JSONObject localJSONObject1 = localJSONObject2;
    if (localJSONObject2 == null) {
      localJSONObject1 = new JSONObject();
    }
    try
    {
      localJSONObject1.put(paramString, paramReloginCredentials.toJSONObject());
      a("relogin_credentials", localJSONObject1.toString());
      return;
    }
    catch (JSONException paramString)
    {
      L.e(paramString);
    }
  }
  
  public void a(String paramString, Map<String, String> paramMap)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      Object localObject = paramMap;
      if (paramMap == null) {
        localObject = Collections.emptyMap();
      }
      try
      {
        paramMap = n();
        paramMap.put(paramString, localObject);
        paramString = new JSONObject();
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          localObject = (Map.Entry)paramMap.next();
          paramString.put((String)((Map.Entry)localObject).getKey(), new JSONObject((Map)((Map.Entry)localObject).getValue()));
          continue;
          return;
        }
      }
      catch (Throwable paramString)
      {
        L.e(paramString);
      }
    }
    a("stat_items", paramString.toString());
  }
  
  public void a(boolean paramBoolean)
  {
    a("device_login_available", paramBoolean);
  }
  
  public void b(int paramInt)
  {
    a("time_offset_seconds", paramInt);
  }
  
  public void b(SapiAccount paramSapiAccount)
  {
    if (paramSapiAccount == null) {
      return;
    }
    List localList = e();
    if (!localList.contains(paramSapiAccount)) {
      localList.add(paramSapiAccount);
    }
    for (;;)
    {
      a(localList);
      return;
      localList.set(localList.indexOf(paramSapiAccount), paramSapiAccount);
    }
  }
  
  public void b(String paramString)
  {
    a("sapi_version", paramString);
  }
  
  public void b(boolean paramBoolean)
  {
    a("hosts_hijacked", paramBoolean);
  }
  
  public boolean b()
  {
    return b("device_login_available", false);
  }
  
  public SapiAccount.ReloginCredentials c(String paramString)
  {
    JSONObject localJSONObject = l();
    if (localJSONObject != null)
    {
      paramString = localJSONObject.optJSONObject(paramString);
      if (paramString != null)
      {
        paramString = SapiAccount.ReloginCredentials.fromJSONObject(paramString);
        ubi = m();
        return paramString;
      }
    }
    return new SapiAccount.ReloginCredentials();
  }
  
  public void c(SapiAccount paramSapiAccount)
  {
    if (paramSapiAccount == null) {
      return;
    }
    List localList = f();
    if (!localList.contains(paramSapiAccount)) {
      localList.add(paramSapiAccount);
    }
    for (;;)
    {
      b(localList);
      return;
      localList.set(localList.indexOf(paramSapiAccount), paramSapiAccount);
    }
  }
  
  public void c(boolean paramBoolean)
  {
    a("sync_token_expired", paramBoolean);
  }
  
  public boolean c()
  {
    return b("hosts_hijacked", false);
  }
  
  public SapiAccount d()
  {
    SapiAccount localSapiAccount = null;
    if (!TextUtils.isEmpty(g("current_account"))) {}
    try
    {
      localSapiAccount = SapiAccount.fromJSONObject(new JSONObject(g("current_account")));
      return localSapiAccount;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public void d(SapiAccount paramSapiAccount)
  {
    if (paramSapiAccount == null) {}
    List localList;
    do
    {
      return;
      localList = e();
    } while (!localList.contains(paramSapiAccount));
    localList.remove(paramSapiAccount);
    a(localList);
  }
  
  void d(String paramString)
  {
    a("cuidtoken", paramString);
  }
  
  public List<SapiAccount> e()
  {
    if (!TextUtils.isEmpty(g("share_accounts"))) {
      try
      {
        List localList = SapiAccount.fromJSONArray(new JSONArray(g("share_accounts")));
        return localList;
      }
      catch (Throwable localThrowable)
      {
        return new ArrayList();
      }
    }
    return new ArrayList();
  }
  
  public void e(SapiAccount paramSapiAccount)
  {
    if (paramSapiAccount == null) {}
    List localList;
    do
    {
      return;
      if ((d() != null) && (!TextUtils.isEmpty(uid)) && (uid.equals(duid))) {
        com.baidu.sapi2.share.b.a().b();
      }
      localList = f();
    } while (!localList.contains(paramSapiAccount));
    localList.remove(paramSapiAccount);
    b(localList);
  }
  
  public void e(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {}
    try
    {
      Map localMap = n();
      if (localMap.containsKey(paramString)) {
        localMap.remove(paramString);
      }
      a("stat_items", new JSONObject(localMap).toString());
      return;
    }
    catch (Throwable paramString)
    {
      L.e(paramString);
    }
  }
  
  public List<SapiAccount> f()
  {
    if (!TextUtils.isEmpty(g("login_accounts"))) {
      try
      {
        List localList = SapiAccount.fromJSONArray(new JSONArray(g("login_accounts")));
        return localList;
      }
      catch (Exception localException)
      {
        return new ArrayList();
      }
    }
    return new ArrayList();
  }
  
  public void f(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      a("sync_token", e.a(t, paramString));
    }
  }
  
  public boolean g()
  {
    if (b("first_install", true))
    {
      a("first_install", false);
      return true;
    }
    return false;
  }
  
  public boolean h()
  {
    return b("login_status_changed", false);
  }
  
  public void i()
  {
    a("login_status_changed", false);
  }
  
  public int j()
  {
    return b("voluntary_share_version", 0);
  }
  
  public b k()
  {
    Object localObject = g("sapi_options");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      try
      {
        localObject = b.a(new JSONObject((String)localObject));
        return (b)localObject;
      }
      catch (JSONException localJSONException) {}
    }
    return new b();
  }
  
  public JSONObject l()
  {
    Object localObject = g("relogin_credentials");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      try
      {
        localObject = new JSONObject((String)localObject);
        return (JSONObject)localObject;
      }
      catch (JSONException localJSONException) {}
    }
    return null;
  }
  
  String m()
  {
    return g("cuidtoken");
  }
  
  public Map<String, Map<String, String>> n()
  {
    HashMap localHashMap1 = new HashMap();
    Object localObject = g("stat_items");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {}
    for (;;)
    {
      String str1;
      HashMap localHashMap2;
      try
      {
        localObject = new JSONObject((String)localObject);
        Iterator localIterator1 = ((JSONObject)localObject).keys();
        if (localIterator1.hasNext())
        {
          str1 = (String)localIterator1.next();
          localHashMap2 = new HashMap();
          JSONObject localJSONObject = ((JSONObject)localObject).optJSONObject(str1);
          if (localJSONObject != null)
          {
            Iterator localIterator2 = localJSONObject.keys();
            if (localIterator2.hasNext())
            {
              String str2 = (String)localIterator2.next();
              String str3 = localJSONObject.optString(str2);
              if ((TextUtils.isEmpty(str2)) || (TextUtils.isEmpty(str3))) {
                continue;
              }
              localHashMap2.put(str2, str3);
              continue;
            }
          }
        }
        else
        {
          return localHashMap1;
        }
      }
      catch (Throwable localThrowable)
      {
        L.e(localThrowable);
      }
      localHashMap1.put(str1, localHashMap2);
    }
  }
  
  public JSONObject o()
  {
    Object localObject = g("sync_token");
    if (!TextUtils.isEmpty((CharSequence)localObject))
    {
      localObject = e.b(t, (String)localObject);
      try
      {
        localObject = new JSONObject((String)localObject);
        return (JSONObject)localObject;
      }
      catch (Throwable localThrowable)
      {
        L.e(localThrowable);
      }
    }
    return null;
  }
  
  public String p()
  {
    if (o() != null) {
      return o().optString("sn");
    }
    return null;
  }
  
  public String q()
  {
    if (o() != null) {
      return o().optString("seed");
    }
    return null;
  }
  
  public String r()
  {
    if (o() != null) {
      return o().optString("pubkey");
    }
    return null;
  }
  
  public boolean s()
  {
    return b("sync_token_expired", false);
  }
  
  public int t()
  {
    return b("time_offset_seconds", 0);
  }
  
  public long u()
  {
    return System.currentTimeMillis() / 1000L + t();
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */