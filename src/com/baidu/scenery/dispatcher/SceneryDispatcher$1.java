package com.baidu.scenery.dispatcher;

import android.os.Bundle;

class SceneryDispatcher$1
  implements Runnable
{
  SceneryDispatcher$1(SceneryDispatcher paramSceneryDispatcher) {}
  
  public void run()
  {
    this$0.onSceneryOccur("scenery_disk_usage", new Bundle());
    this$0.postDelayed(this, 1800000L);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryDispatcher.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */