package com.estrongs.android.pop.app.e;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.scanner.a;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class c
{
  private static c a = null;
  private static final DecimalFormat b = new DecimalFormat("0");
  private Context c = FexApplication.a();
  private Comparator<com.estrongs.android.scanner.a.d> d = new d(this);
  
  private Drawable a(PackageManager paramPackageManager, String paramString)
  {
    localDrawable = null;
    for (;;)
    {
      try
      {
        PackageInfo localPackageInfo = paramPackageManager.getPackageInfo(paramString, 0);
        paramString = localDrawable;
        if (localPackageInfo != null)
        {
          localDrawable = paramPackageManager.getApplicationIcon(applicationInfo);
          paramString = localDrawable;
          if (localDrawable != null) {}
        }
        paramString.printStackTrace();
      }
      catch (PackageManager.NameNotFoundException paramString)
      {
        try
        {
          paramString = applicationInfo.loadIcon(paramPackageManager);
          paramPackageManager = paramString;
          if (paramString == null) {
            paramPackageManager = FexApplication.a().getResources().getDrawable(2130837904);
          }
          return paramPackageManager;
        }
        catch (PackageManager.NameNotFoundException paramString)
        {
          for (;;)
          {
            paramPackageManager = localDrawable;
          }
        }
        paramString = paramString;
        paramPackageManager = null;
      }
      paramString = paramPackageManager;
    }
  }
  
  public static c a()
  {
    try
    {
      if (a == null) {
        a = new c();
      }
      c localc = a;
      return localc;
    }
    finally {}
  }
  
  private String a(int paramInt, String paramString1, String paramString2)
  {
    switch (paramInt)
    {
    case 5: 
    default: 
      return c.getResources().getString(2131231670, new Object[] { paramString1, paramString2 });
    case 6: 
      return c.getResources().getString(2131231668, new Object[] { paramString1, paramString2 });
    case 1: 
      return c.getResources().getString(2131231671, new Object[] { paramString1, paramString2 });
    case 2: 
      return c.getResources().getString(2131231669, new Object[] { paramString1, paramString2 });
    case 3: 
      return c.getResources().getString(2131231673, new Object[] { paramString1, paramString2 });
    }
    return c.getResources().getString(2131231672, new Object[] { paramString1, paramString2 });
  }
  
  private String a(String paramString)
  {
    if ("DCIM".equals(paramString)) {
      return c.getResources().getString(2131231679);
    }
    if ("Screenshots".equals(paramString)) {
      return c.getResources().getString(2131231684);
    }
    if ("Download".equals(paramString)) {
      return c.getResources().getString(2131231680);
    }
    if ("Backups".equals(paramString)) {
      return c.getResources().getString(2131231678);
    }
    if ("SDCards".equals(paramString)) {
      return c.getResources().getString(2131231683);
    }
    try
    {
      String str = c.getPackageManager().getPackageInfo(paramString, 0).applicationInfo.loadLabel(c.getPackageManager()).toString();
      return str;
    }
    catch (Exception localException) {}
    return paramString;
  }
  
  private List<e> a(List<com.estrongs.android.scanner.a.d> paramList, long paramLong)
  {
    Object localObject = null;
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramList.iterator();
    for (paramList = (List<com.estrongs.android.scanner.a.d>)localObject; localIterator.hasNext(); paramList = (List<com.estrongs.android.scanner.a.d>)localObject)
    {
      com.estrongs.android.scanner.a.d locald = (com.estrongs.android.scanner.a.d)localIterator.next();
      localObject = paramList;
      if (!a(locald, paramList, paramLong))
      {
        paramList = c.getPackageManager();
        f localf = a(paramLong - locald.f());
        localObject = new e(this);
        ((e)localObject).a(locald.j());
        ((e)localObject).a(localf);
        ((e)localObject).a(locald.k());
        ((e)localObject).a(locald.l());
        ((e)localObject).b(paramLong - locald.f());
        ((e)localObject).a(a(paramList, locald.l()));
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  private boolean a(f paramf1, f paramf2)
  {
    boolean bool;
    if ((a == a) && (b == b)) {
      bool = true;
    }
    while ((bool) && (b == 0)) {
      if (c == c)
      {
        return true;
        bool = false;
      }
      else
      {
        return false;
      }
    }
    return bool;
  }
  
  private boolean a(com.estrongs.android.scanner.a.d paramd, e parame)
  {
    return paramd.k() == parame.a();
  }
  
  private boolean a(com.estrongs.android.scanner.a.d paramd, e parame, long paramLong)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (parame != null)
    {
      f localf = a(paramLong - paramd.f());
      bool1 = bool2;
      if (a(paramd, parame))
      {
        bool1 = bool2;
        if (a(localf, parame.e()))
        {
          parame.a(parame.b() + paramd.j());
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private List<com.estrongs.android.scanner.a.d> b(long paramLong1, long paramLong2)
  {
    Object localObject = a.a().a(paramLong1 - 86400000L * paramLong2, paramLong1);
    LinkedList localLinkedList = new LinkedList();
    localObject = ((Map)localObject).entrySet().iterator();
    while (((Iterator)localObject).hasNext()) {
      localLinkedList.addAll((List)((Map.Entry)((Iterator)localObject).next()).getValue());
    }
    Collections.sort(localLinkedList, d);
    return localLinkedList;
  }
  
  public f a(long paramLong)
  {
    if (paramLong < 0L) {
      return null;
    }
    int i = (int)Math.floor(paramLong / 86400000L);
    int j = (int)Math.floor((paramLong - i * 86400000L) / 3600000L);
    int k = (int)Math.floor((paramLong - i * 86400000L - j * 3600000L) / 60000L);
    return new f(this, i, j, k, (int)(paramLong - i * 86400000L - j * 3600000L - k * 60000L));
  }
  
  public List<e> a(long paramLong1, long paramLong2)
  {
    return a(b(paramLong1, paramLong2), paramLong1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.e.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */