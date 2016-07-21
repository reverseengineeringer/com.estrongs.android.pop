package com.estrongs.android.cleaner.scandisk.a;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.estrongs.android.cleaner.j;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.b;
import com.estrongs.android.pop.utils.w;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class f
  extends a
{
  private final String g = "Obsolete Apks";
  private final int h = 4;
  private Set<String> i;
  private final PackageManager j = FexApplication.a().getPackageManager();
  private ad k = ad.a(FexApplication.a());
  private Set<String> l;
  
  public f(com.estrongs.android.cleaner.i parami, List<String> paramList)
  {
    super(parami, paramList, 2131231175);
  }
  
  public static boolean a(String paramString)
  {
    Iterator localIterator = g().iterator();
    while (localIterator.hasNext()) {
      if (ap.i((String)localIterator.next(), paramString)) {
        return true;
      }
    }
    return false;
  }
  
  private static List<String> g()
  {
    Object localObject = b.b();
    String str = ad.a(FexApplication.a()).A();
    List localList = j.c();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(ap.bV((String)localObject + "/Download/"));
    localArrayList.add(ap.bV(str));
    localObject = localList.iterator();
    while (((Iterator)localObject).hasNext())
    {
      str = (String)((Iterator)localObject).next();
      localArrayList.add(ap.bV(str + "/Download/"));
    }
    return j.a(localArrayList);
  }
  
  public int a()
  {
    return 4;
  }
  
  protected void a(com.estrongs.android.cleaner.h paramh, com.estrongs.android.cleaner.scandisk.i parami)
  {
    Object localObject = null;
    paramh.c(1);
    paramh.d(c);
    String str;
    try
    {
      if (i == null) {
        i = j.a();
      }
      if (l == null)
      {
        l = new HashSet();
        l.add(ap.bV("/sdcard/backups/apps"));
        l.add(ap.bV(k.y()));
      }
      if (i != null) {
        break label199;
      }
      localObject = l.iterator();
      while (((Iterator)localObject).hasNext())
      {
        str = (String)((Iterator)localObject).next();
        if (a.startsWith(str))
        {
          paramh.c(8);
          paramh.a(false);
          f.a(a, d, false);
          return;
        }
      }
    }
    finally {}
    paramh.c(3);
    paramh.a(true);
    f.a(a, d, true);
    return;
    label199:
    PackageInfo localPackageInfo = w.d(j, a);
    if (localPackageInfo != null)
    {
      str = packageName;
      localObject = applicationInfo;
      sourceDir = a;
      publicSourceDir = a;
      localObject = applicationInfo.loadLabel(j).toString();
    }
    for (;;)
    {
      if (localObject != null) {
        paramh.d((String)localObject);
      }
      if ((str != null) && (i.contains(str)))
      {
        paramh.c(3);
        l.c("Obsolete Apks", "apk installed: " + str);
        localObject = l.iterator();
        while (((Iterator)localObject).hasNext())
        {
          str = (String)((Iterator)localObject).next();
          if (a.startsWith(str)) {
            paramh.c(8);
          }
        }
      }
      for (boolean bool = false;; bool = true)
      {
        paramh.a(bool);
        f.a(a, d, bool);
        return;
        paramh.c(4);
        l.c("Obsolete Apks", "apk uninstalled: " + str);
        break;
      }
      str = null;
    }
  }
  
  protected boolean a(com.estrongs.android.cleaner.scandisk.i parami)
  {
    return b.endsWith(".apk");
  }
  
  protected boolean c(com.estrongs.android.cleaner.scandisk.h paramh)
  {
    if (c == 2) {}
    while (a(b)) {
      return false;
    }
    return true;
  }
  
  public String f()
  {
    return "Obsolete Apks";
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.scandisk.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */