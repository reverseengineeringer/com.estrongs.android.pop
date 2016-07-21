package com.baidu.scenery.dispatcher;

import android.os.Bundle;

abstract interface SceneryExecutor
{
  public abstract boolean checkConfigRules(Bundle paramBundle);
  
  public abstract String getName();
  
  public abstract int getShowNum();
  
  public abstract boolean getSwitch();
  
  public abstract boolean handleScenery(Bundle paramBundle);
  
  public abstract boolean isHigherPriority();
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */