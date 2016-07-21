package com.estrongs.android.cleaner;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.b;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class j
{
  public static String a(int paramInt)
  {
    return FexApplication.a().getResources().getString(paramInt);
  }
  
  public static List<String> a(List<String> paramList)
  {
    if (paramList.isEmpty()) {
      return paramList;
    }
    ArrayList localArrayList = new ArrayList(paramList.size());
    Object localObject2 = (String)paramList.get(0);
    Object localObject1 = localObject2;
    if (((String)localObject2).charAt(((String)localObject2).length() - 1) == '/') {
      localObject1 = ((String)localObject2).substring(0, ((String)localObject2).length() - 1);
    }
    localArrayList.add(localObject1);
    localObject2 = new ArrayList();
    int j = 1;
    if (j < paramList.size())
    {
      localObject1 = (String)paramList.get(j);
      if (((String)localObject1).charAt(((String)localObject1).length() - 1) != '/') {
        break label268;
      }
      localObject1 = ((String)localObject1).substring(0, ((String)localObject1).length() - 1);
    }
    label198:
    label260:
    label268:
    for (;;)
    {
      Iterator localIterator = localArrayList.iterator();
      int i = 0;
      String str;
      if (localIterator.hasNext())
      {
        str = (String)localIterator.next();
        if (!((String)localObject1).startsWith(str)) {}
      }
      for (int k = 1;; k = 0)
      {
        if (k != 0)
        {
          j += 1;
          break;
          if (!str.startsWith((String)localObject1)) {
            break label260;
          }
          ((List)localObject2).add(str);
          i = 1;
        }
        for (;;)
        {
          break;
          if (i != 0) {
            localArrayList.removeAll((Collection)localObject2);
          }
          localArrayList.add(localObject1);
          break label198;
          return localArrayList;
        }
      }
    }
  }
  
  public static Set<String> a()
  {
    localTreeSet = new TreeSet();
    Object localObject = FexApplication.a().getPackageManager();
    try
    {
      long l1 = System.currentTimeMillis();
      localObject = ((PackageManager)localObject).getInstalledPackages(8192);
      long l2 = System.currentTimeMillis();
      l.e("sdd", "" + (l2 - l1));
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        PackageInfo localPackageInfo = (PackageInfo)((Iterator)localObject).next();
        if ((localPackageInfo != null) && (packageName != null)) {
          localTreeSet.add(packageName);
        }
      }
      return localTreeSet;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static boolean a(String paramString)
  {
    return !paramString.startsWith(b.b());
  }
  
  public static List<String> b()
  {
    String str = b.b();
    List localList = ap.a();
    if (localList.remove(str)) {}
    return a(localList);
  }
  
  public static List<String> c()
  {
    if (bk.k()) {
      return Collections.emptyList();
    }
    return b();
  }
  
  public static List<String> d()
  {
    Object localObject = b.b();
    List localList = b();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(ap.bV((String)localObject));
    localObject = localList.iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.add(ap.bV((String)((Iterator)localObject).next()));
    }
    return a(localArrayList);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */