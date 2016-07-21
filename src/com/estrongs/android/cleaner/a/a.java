package com.estrongs.android.cleaner.a;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.os.Debug.MemoryInfo;
import com.estrongs.android.cleaner.e;
import com.estrongs.android.cleaner.h;
import com.estrongs.android.cleaner.j;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class a
{
  private h a = new h(1);
  private e b;
  private volatile boolean c;
  private final String d;
  
  public a()
  {
    a.a(0);
    a.b(1);
    a.b("Memory");
    a.d(j.a(2131231178));
    d = j.a(2131231188);
    c = false;
  }
  
  private void a(ActivityManager paramActivityManager, PackageManager paramPackageManager, Map<String, c> paramMap)
  {
    paramActivityManager = paramActivityManager.getRunningServices(Integer.MAX_VALUE);
    if (paramActivityManager == null) {
      return;
    }
    paramPackageManager = paramActivityManager.iterator();
    label19:
    ActivityManager.RunningServiceInfo localRunningServiceInfo;
    String str2;
    String str1;
    for (;;)
    {
      if (paramPackageManager.hasNext())
      {
        localRunningServiceInfo = (ActivityManager.RunningServiceInfo)paramPackageManager.next();
        if (!c) {
          break;
        }
        str2 = service.getPackageName();
        if ((str2 != null) && (!com.estrongs.android.cleaner.a.a.b.a().a(str2)))
        {
          str1 = process;
          if ((str1 != null) && (!com.estrongs.android.cleaner.a.a.a.a(str1)))
          {
            if (paramMap.containsKey(str2)) {
              break label140;
            }
            paramActivityManager = new c(this);
            paramMap.put(str2, paramActivityManager);
          }
        }
      }
    }
    for (;;)
    {
      a = str1;
      paramActivityManager.a(pid);
      break label19;
      break;
      label140:
      paramActivityManager = (c)paramMap.get(str2);
    }
  }
  
  private void a(ActivityManager paramActivityManager, Map<String, c> paramMap)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      c localc = (c)paramMap.get(str);
      if ((localc != null) && (localc.a() != null))
      {
        Object localObject1 = paramActivityManager.getProcessMemoryInfo(localc.a());
        long l = 0L;
        int j = localObject1.length;
        int i = 0;
        while (i < j)
        {
          Object localObject2 = localObject1[i];
          int k = ((Debug.MemoryInfo)localObject2).getTotalPrivateDirty();
          l += ((Debug.MemoryInfo)localObject2).getTotalSharedDirty() + k;
          i += 1;
        }
        localObject1 = new h(str.hashCode(), a.b() + 1, a);
        ((h)localObject1).b(str);
        ((h)localObject1).d(a);
        ((h)localObject1).a(5);
        ((h)localObject1).b(1);
        ((h)localObject1).a(l << 10);
        ((h)localObject1).c(d);
        ((h)localObject1).a(str);
      }
    }
  }
  
  private void a(List<h> paramList)
  {
    if (paramList == null) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        List localList = ((h)paramList.next()).l();
        a(localList);
        localList.clear();
      }
    }
  }
  
  private void b(ActivityManager paramActivityManager, PackageManager paramPackageManager, Map<String, c> paramMap)
  {
    paramActivityManager = paramActivityManager.getRunningAppProcesses();
    if (paramActivityManager == null) {
      return;
    }
    paramPackageManager = paramActivityManager.iterator();
    label17:
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    String str2;
    String str1;
    for (;;)
    {
      if (paramPackageManager.hasNext())
      {
        localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramPackageManager.next();
        if (!c) {
          break;
        }
        paramActivityManager = pkgList;
        if ((paramActivityManager != null) && (paramActivityManager.length > 0))
        {
          str2 = paramActivityManager[0];
          if ((str2 != null) && (!com.estrongs.android.cleaner.a.a.b.a().a(str2)))
          {
            str1 = processName;
            if ((str1 != null) && (!com.estrongs.android.cleaner.a.a.a.a(str1)))
            {
              if (paramMap.containsKey(str2)) {
                break label148;
              }
              paramActivityManager = new c(this);
              paramMap.put(str2, paramActivityManager);
            }
          }
        }
      }
    }
    for (;;)
    {
      a = str1;
      paramActivityManager.a(pid);
      break label17;
      break;
      label148:
      paramActivityManager = (c)paramMap.get(str2);
    }
  }
  
  public void a()
  {
    d();
    new Thread(new b(this)).start();
  }
  
  public void a(e parame)
  {
    b = parame;
  }
  
  public void b()
  {
    c = false;
  }
  
  public void b(e parame) {}
  
  public h c()
  {
    return a;
  }
  
  public void d()
  {
    List localList = a.l();
    a(localList);
    localList.clear();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.cleaner.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */