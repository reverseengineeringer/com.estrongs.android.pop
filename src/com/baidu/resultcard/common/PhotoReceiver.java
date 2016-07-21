package com.baidu.resultcard.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

public class PhotoReceiver
  extends BroadcastReceiver
{
  public static final String CAMERA_NEW_PICTURE = "com.android.camera.NEW_PICTURE";
  public static final String HARDWARE_NEW_PICTURE = "android.hardware.action.NEW_PICTURE";
  private static String mOldContentUrl = null;
  private static long mOldNewPictureTime = 0L;
  
  public void onReceive(Context paramContext, Intent paramIntent)
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
    PhotoScanner.getInstance(paramContext).updatePhotoNum(l, paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.common.PhotoReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */