package com.estrongs.android.ui.dialog;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import java.text.Collator;

final class an
  implements Comparable<an>
{
  public static String a = null;
  public static String b = null;
  private static Collator h = ;
  public String c = null;
  public String d = null;
  public boolean e = false;
  ApplicationInfo f;
  boolean g;
  
  public static an a(PackageManager paramPackageManager, ApplicationInfo paramApplicationInfo)
  {
    boolean bool = false;
    if (paramApplicationInfo == null) {
      return null;
    }
    an localan = new an();
    String str = packageName;
    d = str;
    c = str;
    f = paramApplicationInfo;
    if ((flags & 0x1) > 0) {
      bool = true;
    }
    g = bool;
    try
    {
      c = paramPackageManager.getApplicationLabel(paramPackageManager.getApplicationInfo(packageName, 0)).toString();
      e = packageName.equals(a);
      return localan;
    }
    catch (PackageManager.NameNotFoundException paramPackageManager)
    {
      for (;;) {}
    }
  }
  
  public int a(an paraman)
  {
    if ((paraman == null) || (d.equals(b))) {}
    do
    {
      do
      {
        return 1;
        if (!d.equals(b)) {
          break;
        }
      } while (paraman == null);
      return -1;
    } while ((g) && (!g));
    if ((!g) && (g)) {
      return -1;
    }
    return h.compare(c, c);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof an)) {
        break;
      }
    } while (a((an)paramObject) == 0);
    return false;
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */