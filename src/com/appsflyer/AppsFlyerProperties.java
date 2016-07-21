package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

public class AppsFlyerProperties
{
  static boolean a = false;
  static boolean b = false;
  private static AppsFlyerProperties c = new AppsFlyerProperties();
  private Map<String, Object> d = new HashMap();
  private boolean e;
  private boolean f;
  private String g;
  private boolean h;
  
  public static AppsFlyerProperties a()
  {
    return c;
  }
  
  public int a(String paramString, int paramInt)
  {
    paramString = b(paramString);
    if (paramString == null) {
      return paramInt;
    }
    return Integer.valueOf(paramString).intValue();
  }
  
  public String a(Context paramContext)
  {
    if (g != null) {
      return g;
    }
    return paramContext.getSharedPreferences("appsflyer-data", 0).getString("referrer", null);
  }
  
  public void a(String paramString1, String paramString2)
  {
    d.put(paramString1, paramString2);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    d.put(paramString, Boolean.toString(paramBoolean));
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public String[] a(String paramString)
  {
    return (String[])d.get(paramString);
  }
  
  public String b(String paramString)
  {
    return (String)d.get(paramString);
  }
  
  protected void b()
  {
    e = true;
  }
  
  public boolean b(String paramString, boolean paramBoolean)
  {
    paramString = b(paramString);
    if (paramString == null) {
      return paramBoolean;
    }
    return Boolean.valueOf(paramString).booleanValue();
  }
  
  protected void c(String paramString)
  {
    g = paramString;
  }
  
  protected boolean c()
  {
    return f;
  }
  
  protected void d()
  {
    f = true;
  }
  
  public boolean e()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */