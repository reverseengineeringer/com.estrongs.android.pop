package com.baidu.mobstat;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

class r
{
  static r a = new r();
  private String b = "";
  
  private String a(Context paramContext, String paramString)
  {
    Object localObject = "";
    paramContext = paramContext.getPackageManager();
    if (paramContext == null) {}
    for (;;)
    {
      return (String)localObject;
      try
      {
        paramContext = getPackageInfo0versionName;
        localObject = paramContext;
        if (paramContext != null) {
          continue;
        }
        return "";
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        for (;;)
        {
          bb.b(paramContext);
          paramContext = (Context)localObject;
        }
      }
    }
  }
  
  private ArrayList<s> a(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return c(paramContext, paramInt);
    }
    return b(paramContext, paramInt);
  }
  
  private void a(Context paramContext, ArrayList<s> paramArrayList, boolean paramBoolean)
  {
    paramContext = new StringBuilder();
    paramContext.append(System.currentTimeMillis() + "|");
    int i;
    JSONArray localJSONArray;
    if (paramBoolean)
    {
      i = 1;
      paramContext.append(i);
      try
      {
        localJSONArray = new JSONArray();
        paramArrayList = paramArrayList.iterator();
        for (;;)
        {
          if (paramArrayList.hasNext())
          {
            JSONObject localJSONObject = ((s)paramArrayList.next()).a();
            if (localJSONObject != null)
            {
              localJSONArray.put(localJSONObject);
              continue;
              if (TextUtils.isEmpty(paramContext)) {
                break;
              }
            }
          }
        }
      }
      catch (Exception paramContext)
      {
        bb.b(paramContext);
        paramContext = "";
      }
    }
    for (;;)
    {
      x.c.a(System.currentTimeMillis(), paramContext);
      return;
      i = 0;
      break;
      paramArrayList = new JSONObject();
      paramArrayList.put("app_trace", localJSONArray);
      paramArrayList.put("meta-data", paramContext.toString());
      paramContext = cj.a(paramArrayList.toString().getBytes());
    }
  }
  
  private void a(Context paramContext, boolean paramBoolean, int paramInt)
  {
    ArrayList localArrayList = a(paramContext, paramInt);
    if ((localArrayList == null) || (localArrayList.size() == 0)) {
      return;
    }
    if (paramBoolean)
    {
      String str = ((s)localArrayList.get(0)).b();
      if (a(str, b)) {
        b = str;
      }
    }
    a(paramContext, localArrayList, paramBoolean);
  }
  
  private boolean a(int paramInt)
  {
    boolean bool = false;
    if ((paramInt == 100) || (paramInt == 200) || (paramInt == 130)) {
      bool = true;
    }
    return bool;
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    return (!TextUtils.isEmpty(paramString1)) && (!paramString1.equals(b));
  }
  
  private ArrayList<s> b(Context paramContext, int paramInt)
  {
    Object localObject1 = (ActivityManager)paramContext.getSystemService("activity");
    Iterator localIterator;
    LinkedHashMap localLinkedHashMap;
    try
    {
      localObject1 = ((ActivityManager)localObject1).getRunningTasks(50);
      if (localObject1 == null) {
        return new ArrayList();
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        bb.b(localException);
        localIterator = null;
      }
      localLinkedHashMap = new LinkedHashMap();
      localIterator = localIterator.iterator();
    }
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject2 = (ActivityManager.RunningTaskInfo)localIterator.next();
        if (localLinkedHashMap.size() <= paramInt) {}
      }
      else
      {
        return new ArrayList(localLinkedHashMap.values());
      }
      Object localObject2 = topActivity;
      if (localObject2 != null)
      {
        localObject2 = ((ComponentName)localObject2).getPackageName();
        if ((!TextUtils.isEmpty((CharSequence)localObject2)) && (!b(paramContext, (String)localObject2)) && (!localLinkedHashMap.containsKey(localObject2))) {
          localLinkedHashMap.put(localObject2, new s((String)localObject2, a(paramContext, (String)localObject2), ""));
        }
      }
    }
  }
  
  private boolean b(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    if (paramContext == null) {}
    for (;;)
    {
      return false;
      try
      {
        paramContext = getPackageInfo0applicationInfo;
        if (paramContext != null)
        {
          int i = flags;
          if ((i & 0x1) != 0) {
            return true;
          }
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        bb.b(paramContext);
      }
    }
    return false;
  }
  
  private ArrayList<s> c(Context paramContext, int paramInt)
  {
    List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (localList == null) {
      return new ArrayList();
    }
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    int i = 0;
    if ((i >= localList.size()) || (localLinkedHashMap.size() > paramInt)) {
      return new ArrayList(localLinkedHashMap.values());
    }
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localList.get(i);
    if (!a(importance)) {}
    for (;;)
    {
      i += 1;
      break;
      Object localObject = pkgList;
      if ((localObject != null) && (localObject.length != 0))
      {
        localObject = pkgList[0];
        if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!b(paramContext, (String)localObject)) && (!localLinkedHashMap.containsKey(localObject))) {
          localLinkedHashMap.put(localObject, new s((String)localObject, a(paramContext, (String)localObject), String.valueOf(importance)));
        }
      }
    }
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    int i = 1;
    if (!paramBoolean) {
      i = 20;
    }
    try
    {
      a(paramContext, paramBoolean, i);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */