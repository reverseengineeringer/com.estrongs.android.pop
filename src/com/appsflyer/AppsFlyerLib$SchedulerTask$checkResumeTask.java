package com.appsflyer;

import android.content.Context;
import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;

class AppsFlyerLib$SchedulerTask$checkResumeTask
  extends TimerTask
{
  private Context b;
  
  public void run()
  {
    if (!AppsFlyerProperties.a)
    {
      if (AppsFlyerLib.e(b)) {
        Log.i("AppsFlyer_3.2", "checkResumeTask background");
      }
      AppsFlyerLib.f(b);
    }
    a.a.cancel();
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.AppsFlyerLib.SchedulerTask.checkResumeTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */