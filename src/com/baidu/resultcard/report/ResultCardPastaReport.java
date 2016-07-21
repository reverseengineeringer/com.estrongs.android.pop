package com.baidu.resultcard.report;

import android.content.Context;
import com.baidu.scenery.utils.LogHelper;
import com.dianxinos.dxservice.core.a;
import org.json.JSONException;
import org.json.JSONObject;

public class ResultCardPastaReport
{
  public static final String KEY_INSTALL = "isInstall";
  public static final String KEY_NETSTAT = "netstat";
  public static final String KEY_PKG = "adpkg";
  public static final String KEY_SID = "sid";
  public static final String KEY_VALUE_CLICK = "duresultcard_sdk_click";
  public static final String KEY_VALUE_INSTALL = "duresultcard_sdk_install";
  public static final String KEY_VALUE_SHOW = "duresultcard_sdk_show";
  private static final boolean PASTA_REPORT_ENABLED = true;
  private static final String TAG = "SDKCard";
  private static ResultCardPastaReport sInstance;
  private a mDXCore;
  
  private ResultCardPastaReport(Context paramContext)
  {
    mDXCore = a.a(paramContext);
    mDXCore.a(0);
  }
  
  public static ResultCardPastaReport getInstance(Context paramContext)
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new ResultCardPastaReport(paramContext);
      }
      return sInstance;
    }
    finally {}
  }
  
  public void reportEvent(String paramString1, String paramString2, Number paramNumber)
  {
    mDXCore.a(paramString1, paramString2, paramNumber);
    if (LogHelper.isLogEnabled()) {
      LogHelper.d("SDKCard", "key = " + paramString1 + ", contentKey = " + paramString2 + ", contentValue = " + paramNumber);
    }
  }
  
  public void reportEvent(String paramString, JSONObject paramJSONObject)
  {
    mDXCore.a(paramString, 0, paramJSONObject);
    if (LogHelper.isLogEnabled()) {
      LogHelper.d("SDKCard", "key = " + paramString + ", data = " + paramJSONObject.toString());
    }
  }
  
  public void reportJson(String paramString1, String paramString2, int paramInt)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("adpkg", paramString2);
      localJSONObject.put("sid", paramInt);
      reportEvent(paramString1, localJSONObject);
      return;
    }
    catch (JSONException paramString1)
    {
      while (!LogHelper.isLogEnabled()) {}
      LogHelper.d("SDKCard", "create report content failed.", paramString1);
    }
  }
  
  public void reportJson(String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("adpkg", paramString2);
      localJSONObject.put("sid", paramInt);
      localJSONObject.put("netstat", paramBoolean);
      reportEvent(paramString1, localJSONObject);
      return;
    }
    catch (JSONException paramString1)
    {
      while (!LogHelper.isLogEnabled()) {}
      LogHelper.d("SDKCard", "create report content failed.", paramString1);
    }
  }
  
  public void reportJson(String paramString1, String paramString2, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("adpkg", paramString2);
      localJSONObject.put("sid", paramInt);
      localJSONObject.put("isInstall", paramBoolean1);
      localJSONObject.put("netstat", paramBoolean2);
      reportEvent(paramString1, localJSONObject);
      return;
    }
    catch (JSONException paramString1)
    {
      while (!LogHelper.isLogEnabled()) {}
      LogHelper.d("SDKCard", "create report content failed.", paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.report.ResultCardPastaReport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */