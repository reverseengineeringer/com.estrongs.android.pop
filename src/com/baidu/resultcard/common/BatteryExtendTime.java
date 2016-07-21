package com.baidu.resultcard.common;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings.System;
import com.baidu.resultcard.CardLibrary;
import com.baidu.scenery.utils.LogHelper;
import java.util.Random;

public class BatteryExtendTime
{
  private static final int TOTAL_EXTENDABLE_TIME = 16620;
  
  private static float getBatteryLevel(Context paramContext)
  {
    int i = 0;
    paramContext = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    int j = paramContext.getIntExtra("level", 0);
    int k = paramContext.getIntExtra("scale", 100);
    if (CardLibrary.sDebug)
    {
      LogHelper.d("SDKCard", "============battery level = " + j);
      LogHelper.d("SDKCard", "============battery scale = " + k);
    }
    if (k != 0) {
      i = j * 100 / k;
    }
    if (i <= 10) {
      return 0.15F;
    }
    if (i <= 20) {
      return 0.25F;
    }
    if (i <= 30) {
      return 0.35F;
    }
    if (i <= 40) {
      return 0.45F;
    }
    if (i <= 50) {
      return 0.55F;
    }
    if (i <= 60) {
      return 0.65F;
    }
    if (i <= 70) {
      return 0.75F;
    }
    if (i <= 80) {
      return 0.85F;
    }
    if (i <= 90) {
      return 0.95F;
    }
    return 1.0F;
  }
  
  private static float getBrightness(Context paramContext)
  {
    int i = Settings.System.getInt(paramContext.getContentResolver(), "screen_brightness", 0) * 100 / 255;
    float f;
    if (i <= 20) {
      f = 0.75F;
    }
    for (;;)
    {
      if (CardLibrary.sDebug) {
        LogHelper.d("SDKCard", "============Brightness:" + f);
      }
      return f;
      if (i <= 40) {
        f = 0.8F;
      } else if (i <= 60) {
        f = 0.85F;
      } else if (i <= 80) {
        f = 0.95F;
      } else {
        f = 1.0F;
      }
    }
  }
  
  public static double getExtendTime(Context paramContext)
  {
    paramContext.getContentResolver();
    double d = (85.0F + new Random().nextInt(15)) / 100.0F * getBatteryLevel(paramContext) * getBrightness(paramContext) * 16620.0D;
    if (CardLibrary.sDebug) {
      LogHelper.d("SDKCard", "============ExtendableTime:" + d);
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.common.BatteryExtendTime
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */