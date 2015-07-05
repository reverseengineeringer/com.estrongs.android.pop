package com.baidu.kirin;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.baidu.kirin.objects.KirinCheckState;
import com.baidu.mobstat.f;
import com.baidu.mobstat.g;
import com.baidu.mobstat.i;
import com.baidu.mobstat.j;
import com.baidu.mobstat.n;
import com.baidu.mobstat.util.e;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class StatUpdateAgent
{
  static HandlerThread a = new HandlerThread("CheckUpdateManagerKirinAgent");
  private static Handler b;
  private static JSONObject c = null;
  private static JSONObject d = null;
  
  private static JSONObject a(Context paramContext, String paramString)
  {
    Object localObject;
    if ((g.a(paramContext).a(paramString)) || (KirinConfig.DEBUG_MODE))
    {
      n.a("can update!");
      localObject = new i(paramContext, "/kirinsdk/updatequery");
      ((i)localObject).a("updateMoment", paramString);
    }
    for (;;)
    {
      try
      {
        paramContext = ((i)localObject).c();
        if (KirinConfig.DEBUG_MODE)
        {
          c = ((i)localObject).a();
          d = paramContext;
        }
        n.a("updateResult is : " + paramContext.toString());
        n.a("can not update");
      }
      catch (Exception paramContext)
      {
        try
        {
          paramContext.put("returncode", ((i)localObject).d());
          localObject = paramContext;
          return (JSONObject)localObject;
        }
        catch (JSONException paramString)
        {
          paramString.printStackTrace();
          return paramContext;
        }
        paramContext = paramContext;
        n.c("send update query error!!");
        return null;
      }
      try
      {
        paramContext = new JSONObject();
        try
        {
          paramContext.put("need_update", "0");
          paramContext.put("returncode", 0);
          localObject = paramContext;
          if (KirinConfig.DEBUG_MODE)
          {
            c = new JSONObject();
            c.put("Send", "didn't send request! at moment : " + paramString);
            d = paramContext;
            return paramContext;
          }
        }
        catch (JSONException paramString) {}
      }
      catch (JSONException paramString)
      {
        for (;;)
        {
          paramContext = null;
        }
      }
    }
    paramString.printStackTrace();
    return paramContext;
  }
  
  private static void a()
  {
    if (!a.isAlive())
    {
      a.start();
      b = new Handler(a.getLooper());
    }
    if (b == null) {
      b = new Handler(a.getLooper());
    }
  }
  
  private static boolean a(JSONObject paramJSONObject, HashMap<String, String> paramHashMap)
  {
    try
    {
      paramHashMap.put("updatetype", paramJSONObject.getString("updatetype"));
      paramHashMap.put("note", paramJSONObject.getString("note"));
      paramHashMap.put("time", paramJSONObject.getString("time"));
      paramHashMap.put("appurl", paramJSONObject.getString("appurl"));
      paramHashMap.put("appname", paramJSONObject.getString("appname"));
      paramHashMap.put("version", paramJSONObject.getString("version"));
      paramHashMap.put("buildid", paramJSONObject.getString("buildid"));
      paramHashMap.put("attach", paramJSONObject.getJSONArray("attach").toString());
      return true;
    }
    catch (JSONException paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
    return false;
  }
  
  private static void b(Context paramContext, int paramInt, PostChoiceListener paramPostChoiceListener)
  {
    if (!g.a(paramContext).c()) {}
    JSONObject localJSONObject;
    do
    {
      return;
      paramContext = new j(paramContext, "/kirinsdk/updatecommit");
      paramContext.a("updateType", paramInt + "");
      localJSONObject = paramContext.c();
      if (paramPostChoiceListener != null) {
        paramPostChoiceListener.PostUpdateChoiceResponse(localJSONObject);
      }
    } while (!KirinConfig.DEBUG_MODE);
    c = paramContext.a();
    d = localJSONObject;
  }
  
  private static void b(Context paramContext, boolean paramBoolean, CheckUpdateListener paramCheckUpdateListener)
  {
    if (paramCheckUpdateListener == null) {
      return;
    }
    HashMap localHashMap = new HashMap();
    KirinCheckState localKirinCheckState = KirinCheckState.ERROR_CHECK_VERSION;
    if (paramBoolean) {
      try
      {
        JSONObject localJSONObject1 = a(paramContext, "atStart");
        if (localJSONObject1 == null)
        {
          n.c("updateResult is null, net error!");
          paramCheckUpdateListener.checkUpdateResponse(localKirinCheckState, new HashMap());
          return;
        }
      }
      catch (Exception localException)
      {
        paramContext = KirinCheckState.ERROR_CHECK_VERSION;
        n.c("Error checking online version: " + localException.getMessage());
        localException.printStackTrace();
      }
    }
    for (;;)
    {
      paramCheckUpdateListener.checkUpdateResponse(paramContext, localHashMap);
      return;
      JSONObject localJSONObject2 = a(paramContext, "atSetting");
      break;
      int i = localJSONObject2.getInt("returncode");
      n.a("updateQuery's retCode is : " + i);
      if (i == 0)
      {
        if (Integer.parseInt(localJSONObject2.getString("need_update")) == 1)
        {
          if (Integer.parseInt(localJSONObject2.getString("buildid")) > f.d(paramContext))
          {
            if (!a(localJSONObject2, localHashMap))
            {
              paramCheckUpdateListener.checkUpdateResponse(KirinCheckState.ALREADY_UP_TO_DATE, localHashMap);
              return;
            }
            if (("".endsWith(localJSONObject2.getString("appurl"))) || (localJSONObject2.getString("appurl") == null))
            {
              n.c("appurl is null or appurl'size is 0!");
              paramContext = KirinCheckState.ALREADY_UP_TO_DATE;
            }
            else if (!localJSONObject2.getString("appurl").startsWith("http://"))
            {
              n.c("appurl is not start with http://");
              paramContext = KirinCheckState.ERROR_CHECK_VERSION;
            }
            else
            {
              paramContext = KirinCheckState.NEWER_VERSION_FOUND;
            }
          }
          else
          {
            paramContext = KirinCheckState.ALREADY_UP_TO_DATE;
          }
        }
        else {
          paramContext = KirinCheckState.ALREADY_UP_TO_DATE;
        }
      }
      else
      {
        n.b("KirinSDK protocol error when mutual with backend");
        paramContext = KirinCheckState.ALREADY_UP_TO_DATE;
      }
    }
  }
  
  public static void checkUpdate(Context paramContext, boolean paramBoolean, CheckUpdateListener paramCheckUpdateListener)
  {
    
    if (paramCheckUpdateListener == null)
    {
      e.c(new Object[] { "sdkstat", "The param of CheckUpdateListener is null, please new a instance of CheckUpdateListener" });
      return;
    }
    paramContext = new a(paramContext, paramBoolean, paramCheckUpdateListener);
    b.post(paramContext);
  }
  
  public static void postUserChoice(Context paramContext, int paramInt, PostChoiceListener paramPostChoiceListener)
  {
    a();
    paramContext = new b(paramContext, paramInt, paramPostChoiceListener);
    b.post(paramContext);
  }
  
  public static void setTestMode()
  {
    KirinConfig.DEBUG_MODE = true;
    KirinConfig.DEFAULT_UPDATE_INTERVAL = 0;
  }
}

/* Location:
 * Qualified Name:     com.baidu.kirin.StatUpdateAgent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */