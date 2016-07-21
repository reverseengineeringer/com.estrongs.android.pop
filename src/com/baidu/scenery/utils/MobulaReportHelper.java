package com.baidu.scenery.utils;

import android.content.Context;
import com.baidu.mobula.reportsdk.MobulaCore;
import org.json.JSONException;
import org.json.JSONStringer;

public class MobulaReportHelper
{
  public static final String KEY_KEY = "key";
  public static final String KEY_PKG = "adpkg";
  public static final String KEY_SID = "sid";
  public static final String KEY_TIMESTAMP = "ts";
  public static final String KEY_VALUE_SHOW = "show";
  public static final String KEY_VALUE_TCTC = "tctc";
  public static final String KEY_VALUE_THI = "thi";
  public static final String LOG_KEY = MobulaReportHelper.class.getSimpleName();
  private static final boolean MOBULA_REPORT_ENABLED = true;
  
  private static void report(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    paramContext = MobulaCore.getInstance(paramContext);
    try
    {
      paramString1 = new JSONStringer().object().key("key").value(paramString1).key("sid").value(paramInt1).key("adpkg").value(paramString2).key("ts").value(System.currentTimeMillis());
      paramString1.endObject();
      paramContext.reportEvent("dailiang", paramString1.toString(), paramInt2);
      return;
    }
    catch (JSONException paramContext)
    {
      while (!LogHelper.isLogEnabled()) {}
      LogHelper.d(LOG_KEY, "create report content failed.", paramContext);
    }
  }
  
  public static void reportClick(Context paramContext, String paramString, int paramInt)
  {
    report(paramContext, "tctc", paramString, paramInt, 0);
  }
  
  public static void reportInstall(Context paramContext, String paramString, int paramInt)
  {
    report(paramContext, "thi", paramString, paramInt, 0);
  }
  
  public static void reportShow(Context paramContext, String paramString, int paramInt)
  {
    report(paramContext, "show", paramString, paramInt, 1);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.utils.MobulaReportHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */