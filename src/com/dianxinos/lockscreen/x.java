package com.dianxinos.lockscreen;

import android.content.Context;
import com.dianxinos.lockscreen.c.h;
import com.dianxinos.lockscreen.c.i;
import org.json.JSONException;
import org.json.JSONObject;

public class x
{
  public static void a(Context paramContext)
  {
    i.a(paramContext.getApplicationContext(), "lssad", "adfuo", Integer.valueOf(1));
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("ec", paramInt);
      i.a(paramContext.getApplicationContext(), "adfsf", localJSONObject);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void a(Context paramContext, long paramLong)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("wt", paramLong);
      i.a(paramContext.getApplicationContext(), "adwt", localJSONObject);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void a(Context paramContext, String paramString, int paramInt)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("way", paramString);
      localJSONObject.put("ec", paramInt);
      i.a(paramContext.getApplicationContext(), "adnlr", localJSONObject);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("dsst", paramBoolean);
      i.a(paramContext.getApplicationContext(), "addlt", localJSONObject);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void a(Context paramContext, boolean paramBoolean, String paramString1, String paramString2)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("dsst", paramBoolean);
      localJSONObject.put("opway", paramString1);
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = "empty";
      }
      localJSONObject.put("channel", paramString1);
      i.a(paramContext.getApplicationContext(), "adop", localJSONObject);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static String b(Context paramContext)
  {
    switch (h.b(paramContext))
    {
    default: 
      return "un";
    case 2: 
      return "wifi";
    case 3: 
      return "edge";
    case 4: 
      return "edge";
    }
    return "edge";
  }
  
  public static void b(Context paramContext, long paramLong)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("ls_prtc", paramLong);
      localJSONObject.put("nws", b(paramContext));
      i.a(paramContext.getApplicationContext(), "fulrt", localJSONObject);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void b(Context paramContext, boolean paramBoolean)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("dsst", paramBoolean);
      i.a(paramContext.getApplicationContext(), "adshst", localJSONObject);
      return;
    }
    catch (JSONException paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */