package com.dianxinos.dxservice.a;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.provider.Settings.System;
import com.dianxinos.dxservice.stat.j;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class a
{
  private static Context a;
  private static PackageManager b;
  private static ContentResolver c;
  
  public static j a(String paramString1, String paramString2)
  {
    return new j(paramString1, a, paramString2);
  }
  
  public static List<j> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b.getInstalledApplications(0).iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(a(nextpackageName, paramString));
    }
    return localArrayList;
  }
  
  public static void a(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    b = a.getPackageManager();
    c = a.getContentResolver();
  }
  
  public static boolean a(j paramj)
  {
    Object localObject = Settings.System.getString(c, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}");
    if (localObject == null) {}
    for (;;)
    {
      return false;
      localObject = ((String)localObject).split(",");
      paramj = c.a(paramj.a());
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        if (localObject[i].equals(paramj)) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public static void b(j paramj)
  {
    paramj = c.a(paramj.a());
    String str = Settings.System.getString(c, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}");
    if (str == null)
    {
      Settings.System.putString(c, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}", paramj);
      return;
    }
    paramj = str + "," + paramj;
    Settings.System.putString(c, "android.{F46B117B-CBC7-4ac2-8F3C-43C1649DC7PN}", paramj);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */