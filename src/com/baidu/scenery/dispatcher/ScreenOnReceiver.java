package com.baidu.scenery.dispatcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;

public class ScreenOnReceiver
  extends BroadcastReceiver
{
  public static void onScreenOn(Context paramContext, Intent paramIntent)
  {
    if (paramIntent != null) {}
    for (paramContext = paramIntent.getAction(); !TextUtils.equals(paramContext, "android.intent.action.SCREEN_ON"); paramContext = null) {
      return;
    }
    paramContext = new Bundle();
    SceneryDispatcher.getInstance().onSceneryOccur("scenery_disk_usage", paramContext);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    onScreenOn(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.ScreenOnReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */