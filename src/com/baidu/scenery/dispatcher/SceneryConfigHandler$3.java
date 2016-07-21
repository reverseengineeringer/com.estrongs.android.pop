package com.baidu.scenery.dispatcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.scenery.utils.LogHelper;

final class SceneryConfigHandler$3
  extends BroadcastReceiver
{
  SceneryConfigHandler$3(Context paramContext) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if (SceneryConfigHandler.access$000()) {
      LogHelper.i("scenery", "receiver action: " + paramContext);
    }
    if (!TextUtils.equals(paramContext, "com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG")) {
      return;
    }
    SceneryDispatcher.getInstance().post(new SceneryConfigHandler.3.1(this));
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryConfigHandler.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */