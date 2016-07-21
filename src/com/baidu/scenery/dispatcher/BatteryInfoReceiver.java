package com.baidu.scenery.dispatcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;

class BatteryInfoReceiver
  extends BroadcastReceiver
{
  public static final String BATTERY_INFO_PERCENT_KEY = "battery_info_percent_key";
  public static final String BATTERY_INFO_PLUG_TYPE = "battery_info_plug_type";
  
  private static void fixData(BatteryInfoReceiver.BatteryInfo paramBatteryInfo)
  {
    if ((Build.DEVICE.equalsIgnoreCase("SCH-i909")) && (Build.VERSION.SDK_INT <= 8) && (!Build.VERSION.RELEASE.equals("2.2.2"))) {
      scale = 1000;
    }
    if ((level <= scale) || (scale < 100)) {
      scale = 100;
    }
  }
  
  public static void onBatteryInfoChanged(Intent paramIntent)
  {
    BatteryInfoReceiver.BatteryInfo localBatteryInfo = new BatteryInfoReceiver.BatteryInfo();
    level = paramIntent.getIntExtra("level", 0);
    scale = paramIntent.getIntExtra("scale", 100);
    plugType = paramIntent.getIntExtra("plugged", 0);
    status = paramIntent.getIntExtra("status", 1);
    fixData(localBatteryInfo);
    int i;
    if (scale < 1)
    {
      i = level;
      BatteryInfoReceiver.BatteryInfo.access$002(localBatteryInfo, i);
      if ((BatteryInfoReceiver.BatteryInfo.access$000(localBatteryInfo) < 0) || (BatteryInfoReceiver.BatteryInfo.access$000(localBatteryInfo) > 100)) {
        break label154;
      }
      percent = BatteryInfoReceiver.BatteryInfo.access$000(localBatteryInfo);
    }
    for (;;)
    {
      paramIntent = new Bundle();
      paramIntent.putInt("battery_info_percent_key", percent);
      paramIntent.putInt("battery_info_plug_type", plugType);
      SceneryDispatcher.getInstance().onSceneryOccur("scenery_charge", paramIntent);
      return;
      i = level * 100 / scale;
      break;
      label154:
      if (BatteryInfoReceiver.BatteryInfo.access$000(localBatteryInfo) < 0) {
        percent = 0;
      } else if (BatteryInfoReceiver.BatteryInfo.access$000(localBatteryInfo) > 100) {
        percent = 100;
      }
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    onBatteryInfoChanged(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.BatteryInfoReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */