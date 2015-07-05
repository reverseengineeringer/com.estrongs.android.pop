package com.baidu.mobstat;

import android.content.Context;

class r
  extends s
{
  public static final String a = "device_id_" + t.b;
  public static final String b = "cuidsec_" + t.b;
  public static final String c = "mtjsdkmacss_" + t.b;
  public static final String d = "mtjsdkmacsstv_" + t.b;
  static r e = new r();
  
  public static r a()
  {
    return e;
  }
  
  protected void a(Context paramContext, int paramInt)
  {
    putInt(paramContext, "sendLogtype", paramInt);
  }
  
  protected void a(Context paramContext, long paramLong)
  {
    putLong(paramContext, "lastsendtime", paramLong);
  }
  
  protected void a(Context paramContext, String paramString)
  {
    putString(paramContext, a, paramString);
  }
  
  protected void a(Context paramContext, boolean paramBoolean)
  {
    putBoolean(paramContext, "exceptionanalysisflag", paramBoolean);
  }
  
  protected boolean a(Context paramContext)
  {
    return getBoolean(paramContext, "exceptionanalysisflag", false);
  }
  
  protected int b(Context paramContext)
  {
    return getInt(paramContext, "sendLogtype", 0);
  }
  
  protected void b(Context paramContext, int paramInt)
  {
    putInt(paramContext, "timeinterval", paramInt);
  }
  
  protected void b(Context paramContext, String paramString)
  {
    if (getString(paramContext, "cuid", null) != null) {
      removeString(paramContext, "cuid");
    }
    putString(paramContext, b, paramString);
  }
  
  protected void b(Context paramContext, boolean paramBoolean)
  {
    putBoolean(paramContext, "onlywifi", paramBoolean);
  }
  
  protected int c(Context paramContext)
  {
    return getInt(paramContext, "timeinterval", 1);
  }
  
  protected void c(Context paramContext, String paramString)
  {
    putString(paramContext, "setchannelwithcodevalue", paramString);
  }
  
  protected void c(Context paramContext, boolean paramBoolean)
  {
    putBoolean(paramContext, "setchannelwithcode", paramBoolean);
  }
  
  protected void d(Context paramContext, String paramString)
  {
    putString(paramContext, c, paramString);
  }
  
  protected void d(Context paramContext, boolean paramBoolean)
  {
    putBoolean(paramContext, "mtjtv", paramBoolean);
  }
  
  protected boolean d(Context paramContext)
  {
    return getBoolean(paramContext, "onlywifi", false);
  }
  
  protected String e(Context paramContext)
  {
    return getString(paramContext, a, null);
  }
  
  protected void e(Context paramContext, String paramString)
  {
    putString(paramContext, d, paramString);
  }
  
  protected String f(Context paramContext)
  {
    return getString(paramContext, b, null);
  }
  
  protected String g(Context paramContext)
  {
    return getString(paramContext, "setchannelwithcodevalue", null);
  }
  
  protected boolean h(Context paramContext)
  {
    return getBoolean(paramContext, "setchannelwithcode", false);
  }
  
  protected String i(Context paramContext)
  {
    return getString(paramContext, c, null);
  }
  
  protected boolean j(Context paramContext)
  {
    return getBoolean(paramContext, "mtjtv", false);
  }
  
  protected String k(Context paramContext)
  {
    return getString(paramContext, d, null);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */