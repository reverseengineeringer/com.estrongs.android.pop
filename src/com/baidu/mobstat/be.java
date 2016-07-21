package com.baidu.mobstat;

import android.content.Context;

class be
  extends bf
{
  static be a = new be();
  
  public static be a()
  {
    return a;
  }
  
  protected int a(Context paramContext)
  {
    return getInt(paramContext, "sendLogtype", 0);
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
    putString(paramContext, "device_id_2", paramString);
  }
  
  protected void a(Context paramContext, boolean paramBoolean)
  {
    putBoolean(paramContext, "exceptionanalysisflag", paramBoolean);
  }
  
  protected int b(Context paramContext)
  {
    return getInt(paramContext, "timeinterval", 1);
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
    putString(paramContext, "cuidsec_2", paramString);
  }
  
  protected void b(Context paramContext, boolean paramBoolean)
  {
    putBoolean(paramContext, "onlywifi", paramBoolean);
  }
  
  protected void c(Context paramContext, String paramString)
  {
    putString(paramContext, "setchannelwithcodevalue", paramString);
  }
  
  protected void c(Context paramContext, boolean paramBoolean)
  {
    putBoolean(paramContext, "setchannelwithcode", paramBoolean);
  }
  
  protected boolean c(Context paramContext)
  {
    return getBoolean(paramContext, "onlywifi", false);
  }
  
  protected String d(Context paramContext)
  {
    return getString(paramContext, "device_id_2", null);
  }
  
  protected void d(Context paramContext, String paramString)
  {
    putString(paramContext, "mtjsdkmacss_2", paramString);
  }
  
  protected void d(Context paramContext, boolean paramBoolean)
  {
    putBoolean(paramContext, "mtjtv", paramBoolean);
  }
  
  protected String e(Context paramContext)
  {
    return getString(paramContext, "cuidsec_2", null);
  }
  
  protected void e(Context paramContext, String paramString)
  {
    putString(paramContext, "mtjsdkmacsstv_2", paramString);
  }
  
  protected String f(Context paramContext)
  {
    return getString(paramContext, "setchannelwithcodevalue", null);
  }
  
  protected boolean g(Context paramContext)
  {
    return getBoolean(paramContext, "setchannelwithcode", false);
  }
  
  protected String h(Context paramContext)
  {
    return getString(paramContext, "mtjsdkmacss_2", null);
  }
  
  protected boolean i(Context paramContext)
  {
    return getBoolean(paramContext, "mtjtv", false);
  }
  
  protected String j(Context paramContext)
  {
    return getString(paramContext, "mtjsdkmacsstv_2", null);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */