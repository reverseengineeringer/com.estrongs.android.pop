package com.flurry.sdk;

import android.content.Context;
import android.os.Build;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import java.net.HttpCookie;

public class o
{
  private static final String a = o.class.getSimpleName();
  private long b = 10000L;
  private String c;
  private String d = ".yahoo.com";
  private final Runnable e = new o.1(this);
  private final kb<jg> f = new o.2(this);
  private final kb<jk> g = new o.3(this);
  
  public o()
  {
    kc.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", f);
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", g);
    i();
  }
  
  public static String g()
  {
    Object localObject3 = Build.SERIAL;
    Object localObject1 = localObject3;
    try
    {
      if (TextUtils.isEmpty((CharSequence)localObject3)) {
        localObject1 = Settings.Secure.getString(js.a().c().getContentResolver(), "android_id");
      }
      localObject3 = localObject1;
      if (TextUtils.isEmpty((CharSequence)localObject1)) {
        localObject3 = jf.a().f();
      }
      return (String)localObject3;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject2 = localObject3;
      }
    }
  }
  
  private void i()
  {
    if (!TextUtils.isEmpty(c)) {}
    while (!jf.a().c()) {
      return;
    }
    Object localObject2 = jf.a().d();
    String str = g();
    Object localObject1 = new StringBuilder("select bid from data.utilities where _di='");
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      str = lt.a(lt.f((String)localObject2));
      ((StringBuilder)localObject1).append(str).append("' and _diaid='").append(str).append("' and _diaidu='").append((String)localObject2).append("'");
    }
    for (;;)
    {
      localObject2 = new km();
      ((km)localObject2).a("q", ((StringBuilder)localObject1).toString());
      jq.a().a(this);
      localObject1 = new kn();
      ((kn)localObject1).a("https://analytics.query.yahoo.com/v1/public/yql?" + ((km)localObject2).a());
      ((kn)localObject1).d(0);
      ((kn)localObject1).a(kp.a.b);
      ((kn)localObject1).a(new o.4(this));
      jq.a().a(this, (lz)localObject1);
      return;
      ((StringBuilder)localObject1).append(lt.a(lt.f(str))).append("'");
    }
  }
  
  private void j()
  {
    kc.a().b("com.flurry.android.sdk.NetworkStateEvent", g);
    kc.a().b("com.flurry.android.sdk.IdProviderFinishedEvent", f);
  }
  
  public void a()
  {
    js.a().c(e);
    j();
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    if (jf.a().e()) {
      return "0";
    }
    return "o=1&pm=2";
  }
  
  public String d()
  {
    Object localObject = b();
    if (TextUtils.isEmpty((CharSequence)localObject)) {
      return null;
    }
    localObject = new HttpCookie("B", (String)localObject);
    ((HttpCookie)localObject).setDomain(f());
    ((HttpCookie)localObject).setVersion(0);
    return ((HttpCookie)localObject).toString();
  }
  
  public String e()
  {
    if (jf.a().e()) {
      return null;
    }
    HttpCookie localHttpCookie = new HttpCookie("AO", c());
    localHttpCookie.setDomain(f());
    localHttpCookie.setVersion(0);
    return localHttpCookie.toString();
  }
  
  public String f()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */