package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.estrongs.android.scanner.g;

class q
  implements g
{
  q(k paramk) {}
  
  public String a(String paramString)
  {
    if ("DCIM".equals(paramString)) {
      return k.h(a).getResources().getString(2131231679);
    }
    if ("Screenshots".equals(paramString)) {
      return k.h(a).getResources().getString(2131231684);
    }
    if ("Download".equals(paramString)) {
      return k.h(a).getResources().getString(2131231680);
    }
    if ("Backups".equals(paramString)) {
      return k.h(a).getResources().getString(2131231678);
    }
    if ("SDCards".equals(paramString)) {
      return k.h(a).getResources().getString(2131231683);
    }
    try
    {
      String str = ha).getPackageManager().getPackageInfo(paramString, 0).applicationInfo.loadLabel(k.h(a).getPackageManager()).toString();
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */