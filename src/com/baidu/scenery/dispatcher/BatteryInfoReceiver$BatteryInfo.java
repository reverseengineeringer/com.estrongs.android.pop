package com.baidu.scenery.dispatcher;

import java.io.Serializable;

public class BatteryInfoReceiver$BatteryInfo
  implements Serializable
{
  public int level;
  public int percent;
  public int plugType;
  private int reportedPercent;
  public int scale;
  public int status;
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("level=").append(level);
    localStringBuilder.append(", scale=").append(scale);
    localStringBuilder.append(", reportedPercent=").append(reportedPercent);
    localStringBuilder.append(", percent=").append(percent);
    localStringBuilder.append(", plugType=").append(plugType);
    localStringBuilder.append(", status=").append(status);
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.BatteryInfoReceiver.BatteryInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */