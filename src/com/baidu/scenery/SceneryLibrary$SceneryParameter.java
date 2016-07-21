package com.baidu.scenery;

import android.content.Context;
import android.text.TextUtils;

public class SceneryLibrary$SceneryParameter
{
  public String bdct = "a";
  public final Context context;
  public final String dataPipeID;
  public boolean debug = false;
  public String mobuleEnv = "prod";
  public int sid;
  
  public SceneryLibrary$SceneryParameter(Context paramContext, String paramString)
  {
    context = paramContext;
    dataPipeID = paramString;
  }
  
  public boolean checkParameters()
  {
    if (context == null) {}
    while ((TextUtils.isEmpty(dataPipeID)) || (sid == 0)) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.SceneryLibrary.SceneryParameter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */