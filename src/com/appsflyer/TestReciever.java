package com.appsflyer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class TestReciever
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.i("AppsFlyer_3.2", "test dummy receiver - in onReceive");
    try
    {
      Thread.sleep(2000L);
      return;
    }
    catch (InterruptedException paramContext)
    {
      paramContext.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.TestReciever
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */