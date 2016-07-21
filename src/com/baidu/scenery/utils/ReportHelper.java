package com.baidu.scenery.utils;

import android.content.Context;
import com.baidu.scenery.SceneryLibrary;
import org.json.JSONObject;

public class ReportHelper
{
  public static void reportClick(Context paramContext, String paramString)
  {
    int i = SceneryLibrary.getSid();
    PastaReportHelper.getInstance(paramContext).reportClick(paramString, i);
    MobulaReportHelper.reportClick(paramContext, paramString, i);
  }
  
  public static void reportEvent(Context paramContext, String paramString1, String paramString2, Number paramNumber)
  {
    PastaReportHelper.getInstance(paramContext).reportEvent(paramString1, paramString2, paramNumber);
  }
  
  public static void reportEvent(Context paramContext, String paramString, JSONObject paramJSONObject)
  {
    PastaReportHelper.getInstance(paramContext).reportEvent(paramString, paramJSONObject);
  }
  
  public static void reportInstall(Context paramContext, String paramString)
  {
    int i = SceneryLibrary.getSid();
    PastaReportHelper.getInstance(paramContext).reportInstall(paramString, i);
    MobulaReportHelper.reportInstall(paramContext, paramString, i);
  }
  
  public static void reportShow(Context paramContext, String paramString)
  {
    int i = SceneryLibrary.getSid();
    PastaReportHelper.getInstance(paramContext).reportShow(paramString, i);
    MobulaReportHelper.reportShow(paramContext, paramString, i);
  }
  
  public static void reportShow(Context paramContext, String paramString1, String paramString2)
  {
    int i = SceneryLibrary.getSid();
    PastaReportHelper.getInstance(paramContext).reportShow(paramString1, i, paramString2);
    MobulaReportHelper.reportShow(paramContext, paramString1, i);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.utils.ReportHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */