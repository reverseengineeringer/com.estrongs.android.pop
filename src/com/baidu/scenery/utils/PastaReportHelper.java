package com.baidu.scenery.utils;

import android.content.Context;
import com.dianxinos.dxservice.core.a;
import org.json.JSONException;
import org.json.JSONObject;

public class PastaReportHelper
{
  public static final String KEY_KEY = "key";
  public static final String KEY_PKG = "adpkg";
  public static final String KEY_SID = "sid";
  public static final String KEY_SOURCE = "source";
  public static final String KEY_VALUE_CLICK = "duscenery_sdk_click";
  public static final String KEY_VALUE_CLOSE = "duscenery_sdk_close";
  public static final String KEY_VALUE_CLOSE_BACK = "_back";
  public static final String KEY_VALUE_CLOSE_DIALOG = "_dialog";
  public static final String KEY_VALUE_CLOSE_HOME = "_home";
  public static final String KEY_VALUE_INSTALL = "duscenery_sdk_install";
  public static final String KEY_VALUE_PHOTOGRAPH = "photograph";
  public static final String KEY_VALUE_SCENEJSONPK = "duscenery_sdk_jsonpk";
  public static final String KEY_VALUE_SCENEPK = "duscenery_sdk_scenepk";
  public static final String KEY_VALUE_SHOW = "duscenery_sdk_show";
  public static final String KEY_VALUE_SIZEMB = "sizemb";
  public static final String KEY_VALUE_SOURCE_GALLERY = "gallery";
  public static final String KEY_VALUE_SOURCE_HOME = "home";
  public static final String KEY_VALUE_TCMS = "timecost";
  private static final boolean PASTA_REPORT_ENABLED = true;
  private static final String TAG = "scenery";
  private static PastaReportHelper sInstance;
  private a mDXCore;
  
  private PastaReportHelper(Context paramContext)
  {
    mDXCore = a.a(paramContext);
    mDXCore.a(0);
  }
  
  public static PastaReportHelper getInstance(Context paramContext)
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new PastaReportHelper(paramContext);
      }
      return sInstance;
    }
    finally {}
  }
  
  private void reportDialogJson(String paramString1, String paramString2, int paramInt)
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
      LogHelper.d("scenery", "create report content failed.", paramString1);
    }
  }
  
  private void reportDialogJson(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("adpkg", paramString2);
      localJSONObject.put("sid", paramInt);
      localJSONObject.put("source", paramString3);
      reportEvent(paramString1, localJSONObject);
      return;
    }
    catch (JSONException paramString1)
    {
      while (!LogHelper.isLogEnabled()) {}
      LogHelper.d("scenery", "create report content failed.", paramString1);
    }
  }
  
  public void reportClick(String paramString, int paramInt)
  {
    reportDialogJson("duscenery_sdk_click", paramString, paramInt);
  }
  
  public void reportEvent(String paramString1, String paramString2, Number paramNumber)
  {
    mDXCore.a(paramString1, paramString2, paramNumber);
    if (LogHelper.isLogEnabled()) {
      LogHelper.d("scenery", "key = " + paramString1 + ", contentKey = " + paramString2 + ", contentValue = " + paramNumber);
    }
  }
  
  public void reportEvent(String paramString, JSONObject paramJSONObject)
  {
    mDXCore.a(paramString, 0, paramJSONObject);
    if (LogHelper.isLogEnabled()) {
      LogHelper.d("scenery", "key = " + paramString + ", data = " + paramJSONObject.toString());
    }
  }
  
  public void reportInstall(String paramString, int paramInt)
  {
    reportDialogJson("duscenery_sdk_install", paramString, paramInt);
  }
  
  public void reportShow(String paramString, int paramInt)
  {
    reportDialogJson("duscenery_sdk_show", paramString, paramInt);
  }
  
  public void reportShow(String paramString1, int paramInt, String paramString2)
  {
    reportDialogJson("duscenery_sdk_show", paramString1, paramInt, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.utils.PastaReportHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */