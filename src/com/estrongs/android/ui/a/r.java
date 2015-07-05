package com.estrongs.android.ui.a;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;

class r
  extends Thread
{
  r(q paramq, u paramu) {}
  
  public void run()
  {
    Object localObject;
    if (a.c.startsWith("start_app")) {
      localObject = a.c.substring("start_app".length()).split("#");
    }
    try
    {
      localObject = q.a(b).getActivityInfo(new ComponentName(localObject[0], localObject[1]), 1);
      a.a = ((ActivityInfo)localObject).loadIcon(q.a(b));
      a.b = ((ActivityInfo)localObject).loadLabel(q.a(b)).toString();
      q.b(b).post(new s(this));
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        localNameNotFoundException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */