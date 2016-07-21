package com.dianxinos.dxservice.stat;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import com.dianxinos.dxservice.a.b;
import com.dianxinos.dxservice.a.c;

public class j
{
  protected String a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  private PackageInfo l;
  private PackageManager m;
  
  public j(Context paramContext, String paramString)
  {
    g = paramString;
    h = paramContext.getPackageName();
  }
  
  public j(j paramj)
  {
    a = a;
    b = b;
    c = c;
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
    i = i;
    j = j;
    k = k;
  }
  
  public j(String paramString1, Context paramContext, String paramString2)
  {
    a = paramString1;
    g = paramString2;
    h = paramContext.getPackageName();
    m = paramContext.getPackageManager();
    try
    {
      l = m.getPackageInfo(a, 0);
      b = l();
      c = b.a(paramContext, a);
      d = String.valueOf(b.b(paramContext, a));
      e = String.valueOf(b.a(l, "firstInstallTime"));
      f = String.valueOf(b.a(l, "lastUpdateTime"));
      i = a(a);
      j = b.c(paramContext, a);
      k = b(a);
      return;
    }
    catch (PackageManager.NameNotFoundException paramString1)
    {
      while (!c.e) {}
      Log.e("stat.BaseAppInfo", "NameNotFoundException!", paramString1);
    }
  }
  
  private String a(String paramString)
  {
    return m.getInstallerPackageName(paramString);
  }
  
  private String b(String paramString)
  {
    boolean bool = true;
    if ((l.applicationInfo.flags & 0x1) == 1) {}
    for (;;)
    {
      return String.valueOf(bool);
      bool = false;
    }
  }
  
  private String l()
  {
    return l.applicationInfo.loadLabel(m).toString();
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(long paramLong)
  {
    f = String.valueOf(paramLong);
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public String e()
  {
    return e;
  }
  
  public String f()
  {
    return f;
  }
  
  public String g()
  {
    return g;
  }
  
  public String h()
  {
    return h;
  }
  
  public String i()
  {
    return i;
  }
  
  public String j()
  {
    return j;
  }
  
  public String k()
  {
    return k;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */