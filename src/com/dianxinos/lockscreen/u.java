package com.dianxinos.lockscreen;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.List;

public class u
{
  public static boolean a(Context paramContext)
  {
    return a(paramContext, a.a(paramContext).b());
  }
  
  private static boolean a(Context paramContext, long paramLong)
  {
    boolean bool2 = false;
    a locala = a.a(paramContext);
    boolean bool1;
    if (Math.max(locala.g(), locala.f()) > paramLong) {
      bool1 = true;
    }
    Object localObject1;
    int i;
    do
    {
      do
      {
        return bool1;
        localObject1 = paramContext.getPackageManager();
        localObject2 = new Intent("android.intent.action.MAIN");
        ((Intent)localObject2).addCategory("android.intent.category.LAUNCHER");
        localObject1 = ((PackageManager)localObject1).queryIntentActivities((Intent)localObject2, 128);
        bool1 = bool2;
      } while (localObject1 == null);
      paramContext = paramContext.getPackageName();
      i = 0;
      bool1 = bool2;
    } while (i >= ((List)localObject1).size());
    Object localObject3 = (ResolveInfo)((List)localObject1).get(i);
    Object localObject2 = activityInfo.packageName;
    if ((TextUtils.isEmpty((CharSequence)localObject2)) || (((String)localObject2).equals(paramContext))) {}
    do
    {
      do
      {
        i += 1;
        break;
        localObject3 = activityInfo.applicationInfo;
      } while (metaData == null);
      localObject3 = metaData.getString("du_lockscreen_action");
    } while ((TextUtils.isEmpty((CharSequence)localObject3)) || (!((String)localObject3).equals("com.du.action.private")) || (locala.a((String)localObject2) <= paramLong));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */