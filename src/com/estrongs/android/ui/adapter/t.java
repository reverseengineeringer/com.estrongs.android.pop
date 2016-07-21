package com.estrongs.android.ui.adapter;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;

class t
  extends Thread
{
  t(s params, w paramw) {}
  
  public void run()
  {
    Object localObject;
    if (a.c.startsWith("start_app")) {
      localObject = a.c.substring("start_app".length()).split("#");
    }
    try
    {
      localObject = s.a(b).getActivityInfo(new ComponentName(localObject[0], localObject[1]), 1);
      a.a = ((ActivityInfo)localObject).loadIcon(s.a(b));
      a.b = ((ActivityInfo)localObject).loadLabel(s.a(b)).toString();
      s.b(b).post(new u(this));
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
 * Qualified Name:     com.estrongs.android.ui.adapter.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */