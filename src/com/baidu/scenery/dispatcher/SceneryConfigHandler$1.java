package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.scenery.utils.LogHelper;
import com.dianxinos.library.notify.e;

final class SceneryConfigHandler$1
  implements e
{
  SceneryConfigHandler$1(String paramString, Context paramContext) {}
  
  public void onDataArrive(String paramString1, String paramString2)
  {
    if (SceneryConfigHandler.access$000()) {
      LogHelper.i("scenery", "category " + paramString1 + ", body " + paramString2);
    }
    if (!TextUtils.equals(val$dataPipeId, paramString1)) {}
    do
    {
      return;
      SceneryPreferences.saveSceneryConfig(val$ctx, paramString2);
      paramString1 = new Intent("com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG");
      paramString1.setPackage(val$ctx.getPackageName());
      val$ctx.sendBroadcast(paramString1);
    } while (!SceneryConfigHandler.access$000());
    LogHelper.i("scenery", "after send refresh broadcast " + paramString2);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryConfigHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */