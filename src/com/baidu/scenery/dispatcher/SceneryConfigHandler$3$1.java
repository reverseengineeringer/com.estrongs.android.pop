package com.baidu.scenery.dispatcher;

import com.baidu.scenery.utils.LogHelper;

class SceneryConfigHandler$3$1
  implements Runnable
{
  SceneryConfigHandler$3$1(SceneryConfigHandler.3 param3) {}
  
  public void run()
  {
    if (SceneryConfigHandler.access$000()) {
      LogHelper.i("scenery", "before load scenery config");
    }
    SceneryConfigHandler.access$100(SceneryPreferences.getSceneryConfig(this$0.val$ctx));
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryConfigHandler.3.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */