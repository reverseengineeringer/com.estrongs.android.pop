package com.baidu.scenery.dispatcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.baidu.scenery.utils.ReportHelper;

class TakenPhotoReceiver
  extends BroadcastReceiver
{
  public static final String CAMERA_NEW_PICTURE = "com.android.camera.NEW_PICTURE";
  public static final String HARDWARE_NEW_PICTURE = "android.hardware.action.NEW_PICTURE";
  private static String mOldContentUrl = null;
  private static long mOldNewPictureTime = 0L;
  
  public static void onNewPicture(Context paramContext, Intent paramIntent)
  {
    Object localObject;
    if (paramIntent == null)
    {
      localObject = null;
      if ((TextUtils.equals((CharSequence)localObject, "android.hardware.action.NEW_PICTURE")) || (TextUtils.equals((CharSequence)localObject, "com.android.camera.NEW_PICTURE"))) {
        break label37;
      }
    }
    label37:
    long l;
    do
    {
      do
      {
        return;
        localObject = paramIntent.getAction();
        break;
        paramIntent = paramIntent.getDataString();
      } while (TextUtils.isEmpty(paramIntent));
      l = System.currentTimeMillis();
    } while ((l - mOldNewPictureTime < 1000L) && (TextUtils.equals(paramIntent, mOldContentUrl)));
    ReportHelper.reportEvent(paramContext, "duscenery_sdk_scenepk", "photograph", Integer.valueOf(1));
    mOldNewPictureTime = l;
    mOldContentUrl = paramIntent;
    paramContext = new Bundle();
    paramContext.putString("scenery_extra_uri", paramIntent);
    paramContext.putLong("scenery_extra_start_time", SystemClock.elapsedRealtime());
    SceneryDispatcher.getInstance().onSceneryOccur("scenery_take_photo", paramContext);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    onNewPicture(paramContext, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.TakenPhotoReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */