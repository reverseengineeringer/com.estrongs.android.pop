package com.baidu.resultcard.report;

import android.content.Context;
import com.baidu.mobula.reportsdk.MobulaCore;
import com.baidu.resultcard.CardLibrary;
import com.baidu.scenery.utils.LogHelper;
import org.json.JSONException;
import org.json.JSONStringer;

public class ResultCardMobulaReport
{
  public static final String KEY_ISINSTALL = "isInstall";
  public static final String KEY_KEY = "key";
  public static final String KEY_PKG = "adpkg";
  public static final String KEY_SID = "sid";
  public static final String KEY_TIMESTAMP = "ts";
  public static final String KEY_VALUE_SHOW = "show";
  public static final String KEY_VALUE_TCTC = "tctc";
  public static final String KEY_VALUE_THI = "thi";
  public static final String LOG_KEY = "SDKCard";
  private static final boolean MOBULA_REPORT_ENABLED = true;
  
  private static void report(Context paramContext, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    paramContext = MobulaCore.getInstance(paramContext);
    try
    {
      paramString1 = new JSONStringer().object().key("key").value(paramString1).key("sid").value(paramInt1).key("adpkg").value(paramString2).key("ts").value(System.currentTimeMillis());
      paramString1.endObject();
      paramContext.reportEvent("dailiang", paramString1.toString(), paramInt2);
      if (CardLibrary.sDebug) {
        LogHelper.d("SDKCard", paramString1.toString());
      }
      return;
    }
    catch (JSONException paramContext)
    {
      while (!LogHelper.isLogEnabled()) {}
      LogHelper.d("SDKCard", "create report content failed.", paramContext);
    }
  }
  
  private static void report(Context paramContext, String paramString1, String paramString2, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    paramContext = MobulaCore.getInstance(paramContext);
    try
    {
      paramString1 = new JSONStringer().object().key("key").value(paramString1).key("sid").value(paramInt1).key("adpkg").value(paramString2).key("isInstall").value(paramBoolean).key("ts").value(System.currentTimeMillis());
      paramString1.endObject();
      paramContext.reportEvent("dailiang", paramString1.toString(), paramInt2);
      if (CardLibrary.sDebug) {
        LogHelper.d("SDKCard", paramString1.toString());
      }
      return;
    }
    catch (JSONException paramContext)
    {
      while (!LogHelper.isLogEnabled()) {}
      LogHelper.d("SDKCard", "create report content failed.", paramContext);
    }
  }
  
  public static void reportCommonClick(Context paramContext, String paramString, int paramInt)
  {
    report(paramContext, "tctc", paramString, paramInt, 1);
  }
  
  public static void reportCommonShow(Context paramContext, String paramString, int paramInt)
  {
    report(paramContext, "show", paramString, paramInt, 1);
  }
  
  public static void reportInstall(Context paramContext, String paramString, int paramInt)
  {
    report(paramContext, "thi", paramString, paramInt, 0);
  }
  
  public static void reportMainClick(Context paramContext, String paramString, int paramInt, boolean paramBoolean)
  {
    report(paramContext, "tctc", paramString, paramInt, paramBoolean, 1);
  }
  
  public static void reportMainShow(Context paramContext, String paramString, int paramInt, boolean paramBoolean)
  {
    report(paramContext, "show", paramString, paramInt, paramBoolean, 1);
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.report.ResultCardMobulaReport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */