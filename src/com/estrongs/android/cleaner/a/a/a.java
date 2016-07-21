package com.estrongs.android.cleaner.a.a;

import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import com.estrongs.android.pop.FexApplication;

public class a
{
  public static boolean a()
  {
    return b("com.facebook.katana");
  }
  
  public static boolean a(String paramString)
  {
    if ((paramString.equals("system")) || (paramString.equals("com.android.phone")) || (paramString.equals("android.process.acore")) || (paramString.equals("com.android.inputmethod.latin")) || (paramString.equals("com.htc.launcher")) || (paramString.equals("com.android.launcher2")) || (paramString.equals("com.android.launcher")) || (paramString.equals("com.htc.android.htcime")) || (paramString.equals("com.htc.android.cime")) || (paramString.equals("com.htc.provider")) || (paramString.equals("com.htc.bgp")) || (paramString.equals("com.android.systemui")) || (paramString.equals("com.motorola.process.system")) || (paramString.equals("com.android.settings")) || (paramString.equals("com.android.provider.telephony"))) {}
    while ((Build.MODEL.equals("ZTE-U V880")) && (paramString.equals("com.android.providers.calendar"))) {
      return true;
    }
    return false;
  }
  
  public static boolean b(String paramString)
  {
    boolean bool = false;
    try
    {
      paramString = FexApplication.a().getPackageManager().getPackageInfo(paramString, 0);
      if (paramString != null) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */