package com.estrongs.android.c.b;

import android.content.Context;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.SceneryLibrary.SceneryParameter;
import com.baidu.scenery.utils.LogHelper;

public class a
{
  public static void a(Context paramContext)
  {
    SceneryLibrary.SceneryParameter localSceneryParameter = new SceneryLibrary.SceneryParameter(paramContext, "574566857eae993bd290825f");
    debug = false;
    mobuleEnv = "prod";
    sid = 11180;
    SceneryLibrary.init(localSceneryParameter);
    SceneryLibrary.refreshConfigs(paramContext, "574566857eae993bd290825f");
    LogHelper.setLogEnabled(false);
  }
  
  public static boolean b(Context paramContext)
  {
    return SceneryLibrary.isSceneryRunOut(paramContext, "scenery_uninstall");
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.c.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */