package com.baidu.scenery.dispatcher;

import com.baidu.scenery.SceneryConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class MultiConfig
{
  int generalHaveShowCount = 0;
  long generalLastShowTime = 0L;
  int generalShowCount = 0;
  Map<String, Integer> mSceneHaveShowCount = new HashMap();
  Map<String, Long> mSceneLastShowTime = new HashMap();
  Map<String, Integer> mSceneShowCount = new HashMap();
  Map<String, Boolean> mSceneSwitch = new HashMap();
  String pkgName;
  int priority = -1;
  long timeStamp = 0L;
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("pkgName=").append(pkgName).append("\n");
    localStringBuilder.append("priority=").append(priority).append("\n");
    localStringBuilder.append("timeStamp=").append(timeStamp).append("\n");
    localStringBuilder.append("generalShowCount=").append(generalShowCount).append("\n");
    localStringBuilder.append("generalHaveShowCount=").append(generalHaveShowCount).append("\n");
    localStringBuilder.append("generalLastShowTime=").append(generalLastShowTime).append("\n");
    Iterator localIterator = SceneryConstants.SCENERY_LIST.iterator();
    if (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      localStringBuilder.append("sceneName=").append((String)localObject1);
      Object localObject2 = (Integer)mSceneShowCount.get(localObject1);
      if (localObject2 != null)
      {
        localStringBuilder.append(";configCount=").append(localObject2);
        label193:
        localObject2 = (Integer)mSceneHaveShowCount.get(localObject1);
        if (localObject2 == null) {
          break label311;
        }
        localStringBuilder.append(";showCount=").append(localObject2);
        label225:
        localObject2 = (Long)mSceneLastShowTime.get(localObject1);
        if (localObject2 == null) {
          break label326;
        }
        localStringBuilder.append(";showTime=").append(localObject2);
        label257:
        localObject1 = (Boolean)mSceneSwitch.get(localObject1);
        if (localObject1 == null) {
          break label341;
        }
        localStringBuilder.append(";switch on=").append(localObject1);
      }
      for (;;)
      {
        localStringBuilder.append("\n");
        break;
        localStringBuilder.append(";configCount=").append("null");
        break label193;
        label311:
        localStringBuilder.append(";showCount=").append("null");
        break label225;
        label326:
        localStringBuilder.append(";showTime=").append("null");
        break label257;
        label341:
        localStringBuilder.append(";switch on=").append("null");
      }
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.MultiConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */