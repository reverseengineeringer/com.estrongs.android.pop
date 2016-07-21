package com.dianxinos.lockscreen;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.dianxinos.lockscreen.c.g;
import java.util.List;

public class b
{
  public static void a(Context paramContext)
  {
    Object localObject = a.a(paramContext);
    long l = ((a)localObject).b();
    if (l <= 0L) {
      if (g.a) {
        g.a("ChargingLockScreenHelper", "LockScreen is not Open:" + l);
      }
    }
    do
    {
      do
      {
        return;
        if (!((a)localObject).c())
        {
          ((a)localObject).b(false);
          return;
        }
        if (!u.a(paramContext)) {
          break;
        }
      } while (!g.a);
      g.a("ChargingLockScreenHelper", "Oter LockScreen is open, can`t show this");
      return;
      if (!c(paramContext)) {
        break;
      }
    } while (!g.a);
    g.a("ChargingLockScreenHelper", "LockContainer is show now");
    return;
    a.a(paramContext).a(true);
    localObject = new Intent(paramContext, LockScreenContainer.class);
    ((Intent)localObject).addFlags(268435456);
    paramContext.startActivity((Intent)localObject);
  }
  
  public static void b(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setPackage(paramContext.getPackageName());
    localIntent.setAction("ACTION_CLOSE_LOCKSCREEN");
    localIntent.putExtra("extra_package_name", paramContext.getPackageName());
    paramContext.sendBroadcast(localIntent);
  }
  
  public static boolean c(Context paramContext)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningTasks(1);
    if (paramContext.isEmpty()) {
      return true;
    }
    return get0topActivity.getClassName().equals(LockScreenContainer.class.getName());
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */