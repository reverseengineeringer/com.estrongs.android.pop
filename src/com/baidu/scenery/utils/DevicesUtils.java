package com.baidu.scenery.utils;

import android.os.Build;
import android.os.Build.VERSION;

public class DevicesUtils
{
  private static String deviceDesc = null;
  private static Boolean sIsGalaxyNoteEdge = null;
  
  public static String getDeviceDescription()
  {
    if (deviceDesc == null)
    {
      StringBuffer localStringBuffer = new StringBuffer();
      localStringBuffer.append('\n');
      localStringBuffer.append('\t').append("Build.MANUFACTURER\t").append(Build.MANUFACTURER).append('\n');
      localStringBuffer.append('\t').append("Build.MODEL\t").append(Build.MODEL).append('\n');
      localStringBuffer.append('\t').append("Build.PRODUCT\t").append(Build.PRODUCT).append('\n');
      localStringBuffer.append('\t').append("Build.DEVICE\t").append(Build.DEVICE).append('\n');
      localStringBuffer.append('\t').append("Build.BOARD\t").append(Build.BOARD).append('\n');
      localStringBuffer.append('\t').append("Build.BRAND\t").append(Build.BRAND).append('\n');
      localStringBuffer.append('\t').append("Build.CPU_ABI\t").append(Build.CPU_ABI).append('\n');
      localStringBuffer.append('\t').append("Build.DISPLAY\t").append(Build.DISPLAY).append('\n');
      localStringBuffer.append('\t').append("Build.FINGERPRINT\t").append(Build.FINGERPRINT).append('\n');
      localStringBuffer.append('\t').append("Build.HARDWARE\t").append(Build.HARDWARE).append('\n');
      localStringBuffer.append('\t').append("Build.RADIO\t").append(Build.RADIO).append('\n');
      localStringBuffer.append('\t').append("Build.TAGS\t").append(Build.TAGS).append('\n');
      localStringBuffer.append('\t').append("Build.TYPE\t").append(Build.TYPE).append('\n');
      localStringBuffer.append('\t').append("Build.SDK_INT\t").append(Build.VERSION.SDK_INT).append('\n');
      deviceDesc = localStringBuffer.toString();
    }
    return deviceDesc;
  }
  
  public static boolean isGalaxyNoteEdge()
  {
    if (sIsGalaxyNoteEdge == null) {
      if ((!Build.FINGERPRINT.equals("samsung/tbltezc/tbltechn:5.0.1/LRX22C/N9150ZCS1BPD1:user/release-keys")) && ((!Build.FINGERPRINT.contains("N9150")) || (!Build.FINGERPRINT.startsWith("samsung")))) {
        break label53;
      }
    }
    label53:
    for (sIsGalaxyNoteEdge = Boolean.valueOf(true);; sIsGalaxyNoteEdge = Boolean.valueOf(false)) {
      return sIsGalaxyNoteEdge.booleanValue();
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.utils.DevicesUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */