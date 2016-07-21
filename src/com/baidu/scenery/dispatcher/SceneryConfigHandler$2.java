package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.scenery.TestGetJson;
import com.baidu.scenery.utils.LogHelper;
import com.dianxinos.library.notify.c;

final class SceneryConfigHandler$2
  implements Runnable
{
  SceneryConfigHandler$2(Context paramContext, String paramString) {}
  
  public void run()
  {
    if (SceneryConfigHandler.access$000()) {
      LogHelper.i("scenery", "try load data when start");
    }
    Object localObject;
    if (TextUtils.equals(val$ctx.getPackageName(), "com.baidu.sample"))
    {
      localObject = TestGetJson.getJsonBody(val$ctx, "scenery_json.txt");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        break label57;
      }
    }
    label57:
    do
    {
      return;
      localObject = c.b(val$dataPipeId);
      break;
      SceneryPreferences.saveSceneryConfig(val$ctx, (String)localObject);
      localObject = new Intent("com.baidu.scenery.dispatch.ACTION_SYNC_SCENERY_CONFIG");
      ((Intent)localObject).setPackage(val$ctx.getPackageName());
      val$ctx.sendBroadcast((Intent)localObject);
    } while (!SceneryConfigHandler.access$000());
    LogHelper.i("scenery", "after send refresh broadcast");
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.SceneryConfigHandler.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */