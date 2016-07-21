package com.baidu.mobstat;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class n
{
  static n a = new n();
  
  private void a(Context paramContext, ArrayList<o> paramArrayList)
  {
    paramContext = new StringBuilder();
    paramContext.append(System.currentTimeMillis());
    JSONArray localJSONArray;
    try
    {
      localJSONArray = new JSONArray();
      paramArrayList = paramArrayList.iterator();
      for (;;)
      {
        if (paramArrayList.hasNext())
        {
          JSONObject localJSONObject = ((o)paramArrayList.next()).a();
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
    for (;;)
    {
      x.e.a(System.currentTimeMillis(), paramContext);
      return;
      paramArrayList = new JSONObject();
      paramArrayList.put("app_apk", localJSONArray);
      paramArrayList.put("meta-data", paramContext.toString());
      paramContext = cj.a(paramArrayList.toString().getBytes());
    }
  }
  
  private void b(Context paramContext)
  {
    a(paramContext, c(paramContext));
  }
  
  private ArrayList<o> c(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = d(paramContext).iterator();
    Object localObject;
    String str1;
    String str2;
    while (localIterator.hasNext())
    {
      paramContext = (PackageInfo)localIterator.next();
      localObject = applicationInfo;
      if (localObject != null)
      {
        str1 = packageName;
        str2 = versionName;
        paramContext = signatures;
        if ((paramContext == null) || (paramContext.length == 0)) {
          break label147;
        }
      }
    }
    label147:
    for (paramContext = paramContext[0].toChars().toString();; paramContext = "")
    {
      String str3 = cp.a(paramContext.getBytes());
      paramContext = "";
      localObject = sourceDir;
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        paramContext = cp.a(new File((String)localObject));
      }
      localArrayList.add(new o(str1, str2, str3, paramContext));
      break;
      return localArrayList;
    }
  }
  
  private ArrayList<PackageInfo> d(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = paramContext.getPackageManager();
    if (localObject == null) {
      return localArrayList;
    }
    paramContext = new ArrayList(1);
    try
    {
      localObject = ((PackageManager)localObject).getInstalledPackages(64);
      paramContext = (Context)localObject;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        bb.b(localException);
      }
    }
    paramContext = paramContext.iterator();
    while (paramContext.hasNext())
    {
      localObject = (PackageInfo)paramContext.next();
      ApplicationInfo localApplicationInfo = applicationInfo;
      if ((localApplicationInfo != null) && ((flags & 0x1) == 0)) {
        localArrayList.add(localObject);
      }
    }
    return localArrayList;
  }
  
  public void a(Context paramContext)
  {
    try
    {
      b(paramContext);
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
 * Qualified Name:     com.baidu.mobstat.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */