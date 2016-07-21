package com.dianxinos.library.notify.data;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.dianxinos.library.dxbase.i;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.j.d;

public class l
{
  public String a;
  public Boolean b;
  public String c;
  public String d;
  public Boolean e;
  public Integer f;
  
  private boolean a(PackageInfo paramPackageInfo)
  {
    return paramPackageInfo != null;
  }
  
  private boolean b()
  {
    if (TextUtils.isEmpty(c)) {
      return true;
    }
    String str = d.a(c.a(), a);
    return c.equals(str);
  }
  
  private boolean b(PackageInfo paramPackageInfo)
  {
    if (e == null) {}
    do
    {
      return true;
      if (e.booleanValue()) {
        break;
      }
    } while ((paramPackageInfo == null) || (!d(paramPackageInfo)));
    return false;
    if (paramPackageInfo == null) {
      return false;
    }
    return d(paramPackageInfo);
  }
  
  private boolean c()
  {
    if (TextUtils.isEmpty(d)) {
      return true;
    }
    return d.equals(i.a(c.a(), a));
  }
  
  private boolean c(PackageInfo paramPackageInfo)
  {
    if (f == null) {
      return true;
    }
    Integer localInteger = f;
    if (paramPackageInfo == null) {}
    for (paramPackageInfo = null;; paramPackageInfo = Integer.valueOf(versionCode)) {
      return localInteger.equals(paramPackageInfo);
    }
  }
  
  private boolean d(PackageInfo paramPackageInfo)
  {
    return ((applicationInfo.flags & 0x1) == 1) && ((applicationInfo.flags & 0x80) != 128);
  }
  
  public boolean a()
  {
    boolean bool1 = false;
    boolean bool3;
    boolean bool4;
    boolean bool5;
    boolean bool6;
    boolean bool2;
    try
    {
      PackageInfo localPackageInfo = c.a().getPackageManager().getPackageInfo(a, 0);
      bool3 = a(localPackageInfo);
      bool4 = b();
      bool5 = c();
      bool6 = b(localPackageInfo);
      bool2 = c(localPackageInfo);
      if (!b.booleanValue()) {
        break label97;
      }
      if ((bool3) && (bool4) && (bool5) && (bool6) && (bool2)) {
        return true;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        Object localObject = null;
      }
    }
    return false;
    label97:
    if ((!bool3) || (!bool4) || (!bool5) || (!bool6) || (!bool2)) {
      bool1 = true;
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */